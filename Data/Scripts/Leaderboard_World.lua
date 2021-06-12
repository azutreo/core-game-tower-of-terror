--[[
	Leaderboards - World (Client)
	1.0.0 - 2020/10/05
	Contributors
		Nicholas Foreman (META) (https://www.coregames.com/user/f9df3457225741c89209f6d484d0eba8)
--]]

local EntryTemplate = script:GetCustomProperty("EntryTemplate")
local Leaderboard = script:GetCustomProperty("Leaderboard"):WaitForObject()

local LeaderboardReference = Leaderboard:GetCustomProperty("LeaderboardReference")
assert(LeaderboardReference.isAssigned, "The NetReference provided is not properly set for LeaderboardReference.")

local Entries = script:GetCustomProperty("Entries"):WaitForObject()
local Title = script:GetCustomProperty("Title"):WaitForObject()
local UpdateTimer = script:GetCustomProperty("UpdateTimer"):WaitForObject()

local LEADERBOARD_TYPE = Leaderboard:GetCustomProperty("LeaderboardType")
local LEADERBOARD_STAT = Leaderboard:GetCustomProperty("LeaderboardStat")
local LEADERBOARD_PERSISTENCE = Leaderboard:GetCustomProperty("LeaderboardPersistence")

-- Only applicable if LEADERBOARD_STAT is RESOURCE
local RESOURCE_NAME = Leaderboard:GetCustomProperty("ResourceName")

local DISPLAY_AS_INTEGER = Leaderboard:GetCustomProperty("DisplayAsInteger")

local UPDATE_ON_ROUND_ENDED = Leaderboard:GetCustomProperty("UpdateOnRoundEnded")
local UPDATE_ON_EVENT = Leaderboard:GetCustomProperty("UpdateOnEvent")
local UPDATE_TIMER = math.abs(Leaderboard:GetCustomProperty("UpdateTimer"))

local FIRST_PLACE_COLOR = Leaderboard:GetCustomProperty("FirstPlaceColor")
local SECOND_PLACE_COLOR = Leaderboard:GetCustomProperty("SecondPlaceColor")
local THIRD_PLACE_COLOR = Leaderboard:GetCustomProperty("ThirdPlaceColor")
local NO_PODIUM_PLACEMENT_COLOR = Leaderboard:GetCustomProperty("NoPodiumPlacementColor")
local USERNAME_COLOR = Leaderboard:GetCustomProperty("UsernameColor")
local SCORE_COLOR = Leaderboard:GetCustomProperty("ScoreColor")

local LEADERBOARD_TYPES = { "GLOBAL", "MONTHLY", "WEEKLY", "DAILY" }
local LEADERBOARD_STATS = { "RESOURCE", "KDR", "KILLS", "DEATHS", "DAMAGE_DEALT" }
local LEADERBOARD_PERSISTENCES = { "TOTAL", "ROUND" }

local SCORE_SUFFIXES = {"K", "M", "B", "T", "Q", "Qu", "S", "Se", "O", "N", "D"}

local currentEntries = {}
local lastUpdate = time()

local function GetTime(delta)
	delta = tonumber(delta)

	if delta <= 0 then
		return 0, 0, 0
	else
		local minutes = math.floor(delta / 60)
		local seconds = math.floor(delta - (minutes * 60))
		local milliseconds = math.floor(math.ceil((delta - (minutes * 60) - seconds) * 10000) / 10)

		return minutes, seconds, milliseconds
	end
end

local function GetFormattedTime(delta)
	local minutes, seconds, milliseconds = GetTime(delta)

	return string.format("%002i:%002i.%003i", tostring(minutes), tostring(seconds), tostring(milliseconds))
end

local function toSuffixString(num)
	for index = #SCORE_SUFFIXES, 1, -1 do
		local value = 10 ^ (index * 3)
		if num >= value then
			return string.format("%.1f", num / value) .. SCORE_SUFFIXES[index]
		end
	end
	return string.format("%.1f", num)
end

local function getShouldUpdate(newEntries, currentEntries)
	if(#newEntries ~= #currentEntries) then return true end

	for index, newEntry in ipairs(newEntries) do
		if(index > 10) then break end

		local currentEntry = currentEntries[index]
		if(not currentEntry) then return true end

		if(newEntry.id ~= currentEntry.id) then
			return true
		elseif(newEntry.score ~= currentEntry.score) then
			return true
		end
	end

	return false
end

local function getFirstTenEntries(entries)
	local newEntries = {}

	for index, entry in ipairs(entries) do
		if(index > 10) then break end

		newEntries[index] = entries[index]
	end

	return newEntries
end

local function clearEntries()
	for _, child in pairs(Entries:GetChildren()) do
		child:Destroy()
	end
end

local function getProperty(value, options)
	value = string.upper(value)

	for _, option in pairs(options) do
		if(value == option) then return value end
	end

	return options[1]
end

function Update(id)
	if(not Leaderboards.HasLeaderboards()) then return end

	if(id) then
		if(id ~= Leaderboard.id) then return end
	end

	local newEntries = Leaderboards.GetLeaderboard(LeaderboardReference, LeaderboardType[LEADERBOARD_TYPE])
	if(not newEntries) then Task.Wait() return Update() end
	newEntries = getFirstTenEntries(newEntries)

	local shouldUpdate = getShouldUpdate(newEntries, currentEntries)
	if(not shouldUpdate) then return end

	clearEntries()
	currentEntries = newEntries

	for index, entry in ipairs(newEntries) do
		local leaderboardEntry = World.SpawnAsset(EntryTemplate, {
			parent = Entries,
		})
		leaderboardEntry.name = entry.name

		local playerPosition, playerName, playerScore =
			leaderboardEntry:GetCustomProperty("Rank"):WaitForObject(),
			leaderboardEntry:GetCustomProperty("Name"):WaitForObject(),
			leaderboardEntry:GetCustomProperty("Score"):WaitForObject()

		playerPosition.text = string.format("%002i", index)
		if(index == 1) then
			playerPosition:SetColor(FIRST_PLACE_COLOR)
		elseif(index == 2) then
			playerPosition:SetColor(SECOND_PLACE_COLOR)
		elseif(index == 3) then
			playerPosition:SetColor(THIRD_PLACE_COLOR)
		else
			playerPosition:SetColor(NO_PODIUM_PLACEMENT_COLOR)
		end

		playerName.text = string.sub(entry.name, 1, 23)
		playerName:SetColor(USERNAME_COLOR)

		if(RESOURCE_NAME == "HighScore") then
			playerScore.text = GetFormattedTime(entry.score / 1000)
		elseif(DISPLAY_AS_INTEGER) then
			playerScore.text = tostring(math.ceil(entry.score))
		else
			playerScore.text = toSuffixString(entry.score)
		end
		playerScore:SetColor(SCORE_COLOR)

		leaderboardEntry:SetPosition(Vector3.New(0, 0, -30 * (index - 1)))
	end
end

function Tick()
	if((time() - lastUpdate) < UPDATE_TIMER) then
		local timeLeft = math.ceil((lastUpdate + UPDATE_TIMER) - time())
		UpdateTimer.text = string.format("UPDATES IN %s SECONDS", timeLeft)
	else
		lastUpdate = time()

		Update()
	end
end

Events.Connect("LDT_Update", Update)

if(UPDATE_ON_ROUND_ENDED) then
	Game.roundEndEvent:Connect(Update)
end

if(#UPDATE_ON_EVENT > 0) then
	Events.Connect(UPDATE_ON_EVENT, Update)
end

LEADERBOARD_TYPE = getProperty(LEADERBOARD_TYPE, LEADERBOARD_TYPES)
LEADERBOARD_STAT = getProperty(LEADERBOARD_STAT, LEADERBOARD_STATS)
LEADERBOARD_PERSISTENCE = getProperty(LEADERBOARD_PERSISTENCE, LEADERBOARD_PERSISTENCES)

if(UPDATE_TIMER <= 0) then
	UPDATE_TIMER = 0
end

if(UPDATE_TIMER <= 0) then
	UPDATE_TIMER = 0
end

Title.text = "FASTEST TIMES"
--[[if(LEADERBOARD_STAT == "RESOURCE") then
	local resourceName = string.upper(RESOURCE_NAME)
	if(resourceName == "HIGHSCORE") then
		resourceName = "FASTEST TIME"
	end

	Title.text = string.format("%s %s %s", LEADERBOARD_TYPE, LEADERBOARD_PERSISTENCE, resourceName)
else
	Title.text = string.format("%s %s %s", LEADERBOARD_TYPE, LEADERBOARD_PERSISTENCE, LEADERBOARD_STAT)
end]]

while(not Leaderboards.HasLeaderboards()) do
	Task.Wait()
end
Task.Wait()
Update()