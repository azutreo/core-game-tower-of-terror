local KillTriggerTemplate = script:GetCustomProperty("KillTriggerTemplate")
local RotatingTriggersGroupTemplate = script:GetCustomProperty("RotatingTriggersGroupTemplate")

local function killPlayer(trigger, player)
	if(not player:IsA("Player")) then return end
	if(player.isDead) then return end

	player:EnableRagdoll()
	Task.Wait(3)
	player:Die()
end

local function createTrigger(parent, triggerDescendant)
	local trigger = World.SpawnAsset(KillTriggerTemplate, {
		parent = parent,
		position = triggerDescendant:GetPosition(),
		scale = triggerDescendant:GetScale(),
		rotation = triggerDescendant:GetRotation()
	})
	trigger.name = "RotatingKillTrigger"

	local c_b = trigger.beginOverlapEvent:Connect(killPlayer)

	local c
	c = trigger.destroyEvent:Connect(function()
		c_b:Disconnect()
		c:Disconnect()
	end)
end

local function descendantAdded(stage)
	if(not Object.IsValid(stage)) then return end
	local rotatingKillTriggers = stage:FindChildByName("RotatingKillTriggers")
	if(not Object.IsValid(rotatingKillTriggers)) then return end

	Task.Wait(1)

	local group = World.SpawnAsset(RotatingTriggersGroupTemplate, {
		parent = rotatingKillTriggers,
		--position = rotatingKillTriggers:GetWorldPosition(),
		--rotation = rotatingKillTriggers:GetWorldRotation()
	})
	group.name = "Group"

	local children = rotatingKillTriggers:GetChildren()
	rotatingKillTriggers.descendantAddedEvent:Connect(function(p, triggerDescendant)
		if(triggerDescendant.name ~= "RotateKill") then return end
		createTrigger(group, triggerDescendant)
	end)
	for _, child in pairs(children) do
		if(child.name == "RotateKill") then
			createTrigger(group, child)
		end
	end

	--[[rotatingKillTriggers.destroyEvent:Connect(function()
		group:Destroy()
	end)]]

	rotatingKillTriggers:RotateContinuous(Rotation.New(0, 0, -180), 0.05, false)
end

Events.Connect("UpdateKillStages", descendantAdded)