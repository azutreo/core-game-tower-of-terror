--[[
	Leaderboards - Data Tracker (Server)
	1.0.0 - 2020/10/05
	Contributors
		Nicholas Foreman (META) (https://www.coregames.com/user/f9df3457225741c89209f6d484d0eba8)
--]]

local TRACK_KILLS = script:GetCustomProperty("TrackKills")
local TRACK_DEATHS = script:GetCustomProperty("TrackDeaths")
local TRACK_DAMAGE_DEALT = script:GetCustomProperty("TrackDamageDealt")
local TRACK_RESOURCES = script:GetCustomProperty("TrackResources")

local cache = {}
local inRound = false

local function addToPlayerData(player, dataType, value)
	local playerData = Storage.GetPlayerData(player)

	if(type(playerData[dataType]) == "number") then
		playerData[dataType] = playerData[dataType] + value
	else
		playerData[dataType] = value
	end

	Storage.SetPlayerData(player, playerData)
	Events.Broadcast("LDT_Update", "TOTAL", string.upper(dataType), player, playerData[dataType])
end

local function updateKDR(player)
	local playerData = Storage.GetPlayerData(player)

	local kills, deaths = playerData.kills, playerData.deaths
	if(type(playerData.kills) ~= "number") then
		playerData.kills = 0
		kills = 0
	end
	if(type(playerData.deaths) ~= "number") then
		playerData.deaths = 0
		deaths = 0
	end

	if(deaths == 0) then
		deaths = 1
	end

	playerData.kdr = kills / deaths
	Storage.SetPlayerData(player, playerData)

	Events.Broadcast("LDT_Update", "TOTAL", "KDR", player, playerData.kdr)
end

local function updateRoundData(player)
	if(not cache[player]) then return end

	for dataType, value in pairs(cache[player]) do
		Events.Broadcast("LDT_Update", "ROUND", string.upper(dataType), player, value)
	end

	cache[player] = {}
end

local function roundStarted()
	inRound = true

	for player, _ in pairs(cache) do
		cache[player] = {}
	end
end

local function roundEnded()
	inRound = false

	for player, _ in pairs(cache) do
		updateRoundData(player)
	end
end

local function getRoundKDR(player)
	local kills, deaths = player.kills, player.deaths

	if(deaths == 0) then
		deaths = 1
	end

	return kills / deaths
end

local function playerDied(player, damage)
	if(TRACK_DEATHS) then
		addToPlayerData(player, "deaths", 1)
		updateKDR(player)

		if(inRound) then
			cache[player].deaths = player.deaths
			cache[player].kdr = getRoundKDR(player)
		end
	end

	if(TRACK_KILLS) then
		local killer = damage.sourcePlayer
		if(Object.IsValid(killer) and killer:IsA("Player")) then
			addToPlayerData(killer, "kills", 1)
			updateKDR(killer)

			if(inRound) then
				cache[killer].kills = killer.kills
				cache[killer].kdr = getRoundKDR(killer)
			end
		end
	end
end

local function playerDamaged(player, damage)
	if(not TRACK_DAMAGE_DEALT) then return end

	local killer = damage.sourcePlayer
	if(not killer:IsA("Player")) then return end

	addToPlayerData(killer, "damageDealt", damage.amount)
	if(inRound) then
		cache[killer].damageDealt = (cache[killer].damageDealt or 0) + damage.amount
	end
end

local function playerResourceChanged(player, resourceName, value)
	if(not TRACK_RESOURCES) then return end
	if(not _G.ResourcesToTrack[resourceName]) then return end

	Events.Broadcast("LDT_Update", "TOTAL", "RESOURCE", player, value, resourceName)
	if(inRound) then
		cache[player][resourceName] = player:GetResource(resourceName)
	end
end

local function playerJoined(player)
	cache[player] = {}

	player.diedEvent:Connect(playerDied)
	player.damagedEvent:Connect(playerDamaged)
	player.resourceChangedEvent:Connect(playerResourceChanged)
end

-- Realized that most people would not want resource data (like Currency) overriden
--[[function UpdateResource(player, resourceName, value)
	local playerData = Storage.GetPlayerData(player)

	if(type(playerData[resourceName]) == "number") then
		if(value <= playerData[resourceName]) then return end
	end

	playerData[resourceName] = value

	Storage.SetPlayerData(player, playerData)
	Events.Broadcast("LDT_Update", "TOTAL", "RESOURCE", player, value, resourceName)
end]]

Game.playerJoinedEvent:Connect(playerJoined)
Game.playerLeftEvent:Connect(updateRoundData)

Game.roundStartEvent:Connect(roundStarted)
Game.roundEndEvent:Connect(roundEnded)

_G.ResourcesToTrack = {}