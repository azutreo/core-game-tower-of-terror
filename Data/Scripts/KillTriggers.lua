local Stages = script:GetCustomProperty("Stages"):WaitForObject()
local KillTriggerTemplate = script:GetCustomProperty("KillTriggerTemplate")
local KillTriggersFolder = script:GetCustomProperty("KillTriggersFolder"):WaitForObject()

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
        position = triggerDescendant:GetWorldPosition(),
        scale = triggerDescendant:GetWorldScale(),
        rotation = triggerDescendant:GetWorldRotation()
    })
    trigger.name = "KillTrigger"

    trigger.beginOverlapEvent:Connect(killPlayer)

    return trigger
end

local function descendantAdded(stage)
    if(not Object.IsValid(stage)) then return end
    local killTriggers = stage:FindChildByName("KillTriggers")
    if(not Object.IsValid(killTriggers)) then return end

    local children = killTriggers:GetChildren()
    killTriggers.descendantAddedEvent:Connect(function(p, triggerDescendant)
        if(triggerDescendant.name ~= "Kill") then return end
        local trigger = createTrigger(KillTriggersFolder, triggerDescendant)
        triggerDescendant.destroyEvent:Connect(function()
            trigger:Destroy()
        end)
    end)
    for _, child in pairs(children) do
        if(child.name == "Kill") then
            local trigger = createTrigger(KillTriggersFolder, child)
            child.destroyEvent:Connect(function()
                trigger:Destroy()
            end)
        end
    end
end

Events.Connect("UpdateKillStages", descendantAdded)