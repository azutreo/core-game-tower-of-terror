local ShopData = require(script:GetCustomProperty("ShopData"))

local function getTrail(trailId)
	for _, trail in pairs(ShopData.Trails) do
		if(trail.id == trailId) then
			return trail
		end
	end
end

local function equipTrail(player, trailId)
	local trail = getTrail(trailId)
	if(not trail) then return end

	local playerData = Storage.GetPlayerData(player)
	playerData.currentTrail = trailId
	Storage.SetPlayerData(player, playerData)

	for _, attachedObject in pairs(player:GetAttachedObjects()) do
		if(attachedObject.name == "Trail") then
			attachedObject:Destroy()
		end
	end

	player:SetResource("CurrentTrail", trail.id)
end

local function getTrails(player)
	local playerData = Storage.GetPlayerData(player)
	if(not playerData.trails) then
		playerData.trails = {}
		Storage.SetPlayerData(player, playerData)
	end

	Events.BroadcastToPlayer(player, "SetTrails", playerData.trails)
end

local function playerJoined(player)
	local playerData = Storage.GetPlayerData(player)
	if(type(playerData.currentTrail) ~= "number") then return end

	equipTrail(player, playerData.currentTrail)
end

Game.playerJoinedEvent:Connect(playerJoined)
Events.ConnectForPlayer("GetTrails", getTrails)
Events.Connect("EquipTrail", equipTrail)
Events.ConnectForPlayer("EquipTrail", equipTrail)