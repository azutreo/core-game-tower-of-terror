local PrefixTags = require(script:GetCustomProperty("PrefixTags"))

local LocalPlayer = Game.GetLocalPlayer()

local tabKeyBinding = "ability_extra_19"

local function tab(player, binding)
    if(player ~= LocalPlayer) then return end
    if(binding ~= tabKeyBinding) then return end

    local playerPrefix = PrefixTags:GetPlayerPrefix(player)
    if(not playerPrefix) then return end

    if(not playerPrefix.isModerator) then return end

    local camera = LocalPlayer:GetActiveCamera()
    if(UI.IsCursorVisible()) then
        UI.SetCursorVisible(false)
        UI.SetCanCursorInteractWithUI(false)

        --[[camera.rotationMode = RotationMode.CAMERA
        camera.isDistanceAdjustable = true
        camera.hasFreeControl = true]]
    else
        UI.SetCursorVisible(true)
        UI.SetCanCursorInteractWithUI(true)

        --[[camera.rotationMode = RotationMode.LOOK_ANGLE
        camera.isDistanceAdjustable = false
        camera.hasFreeControl = false]]
    end
end

LocalPlayer.bindingReleasedEvent:Connect(tab)