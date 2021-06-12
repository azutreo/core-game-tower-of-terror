local camera = script.parent
local playerSettings = script:GetCustomProperty("PlayerSettings")

local LocalPlayer = Game.GetLocalPlayer()

function Tick(deltaTime)
    if(not camera.isDistanceAdjustable) then return end

    local distance = camera.currentDistance

    if(distance <= 0) then
		--camera.useCameraSocket = true
		LocalPlayer.isVisibleToSelf = false
    else
        --camera.useCameraSocket = false
		LocalPlayer.isVisibleToSelf = true
    end
end