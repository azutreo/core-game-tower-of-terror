local camera = script.parent
local playerSettings = script:GetCustomProperty("PlayerSettings")

function Tick(deltaTime)
    if(not camera.isDistanceAdjustable) then return end

    local distance = camera.currentDistance
    
    if(distance <= 0) then
        camera.useCameraSocket = true
    else
        camera.useCameraSocket = false
    end
end