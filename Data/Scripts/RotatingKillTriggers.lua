local RotatingKillTriggersFolder = script:GetCustomProperty("RotatingKillTriggersFolder"):WaitForObject()
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

    trigger.beginOverlapEvent:Connect(killPlayer)
end

local function descendantAdded(stage)
    if(not Object.IsValid(stage)) then return end
    local rotatingKillTriggers = stage:FindChildByName("RotatingKillTriggers")
    if(not Object.IsValid(rotatingKillTriggers)) then return end

    local group = World.SpawnAsset(RotatingTriggersGroupTemplate, {
        parent = RotatingKillTriggersFolder,
        position = rotatingKillTriggers:GetWorldPosition(),
        rotation = rotatingKillTriggers:GetRotation()
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

    rotatingKillTriggers.destroyEvent:Connect(function()
        group:Destroy()
    end)

    rotatingKillTriggers:RotateContinuous(Rotation.New(0, 0, -180), 0.05, false)
    group:RotateContinuous(Rotation.New(0, 0, -180), 0.05, false)
end

Events.Connect("UpdateKillStages", descendantAdded)