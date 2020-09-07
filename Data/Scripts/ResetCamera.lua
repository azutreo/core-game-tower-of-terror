local LocalPlayer = Game.GetLocalPlayer()

local function resetCameraView()
	local view = LocalPlayer:GetViewWorldRotation()
	LocalPlayer:SetLookWorldRotation(Rotation.New(view.x, view.y, LocalPlayer:GetWorldRotation().z))
end

Events.Connect("ResetCamera", resetCameraView)