local ShopData = require(script:GetCustomProperty("ShopData"))

local trails = {}

local function getTrail(trailId)
	for _, trail in pairs(ShopData.Trails) do
		if(trail.id == trailId) then
			return trail
		end
	end
end

local function equipTrail(player, trailId)
	local trail = getTrail(trailId)
	if(trailId ~= 0) then
		if(not trail) then return end
	end

	if(trails[player]) then
		trails[player]:Destroy()
		trails[player] = nil
	end

	if(trailId == 0) then return end

	local attachedTrail = World.SpawnAsset(trail.template)
	attachedTrail.name = "Trail"
	attachedTrail:AttachToPlayer(player, "root")
	attachedTrail:SetPosition(Vector3.New(0, 0, 150))
	trails[player] = attachedTrail
end

local function resourceChanged(player, resourceName, resourceValue)
	if(resourceName ~= "CurrentTrail") then return end

	equipTrail(player, resourceValue)
end

local function playerJoined(player)
	player.resourceChangedEvent:Connect(resourceChanged)

	local currentTrailId = player:GetResource("CurrentTrail")
	equipTrail(player, currentTrailId)
end

local function playerLeft(player)
	if(not trails[player]) then return end

	trails[player]:Destroy()
	trails[player] = nil
end

Game.playerJoinedEvent:Connect(playerJoined)
Game.playerLeftEvent:Connect(playerLeft)