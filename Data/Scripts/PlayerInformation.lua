local GameScript = script:GetCustomProperty("Game"):WaitForObject()
local CoinsText = script:GetCustomProperty("Coins"):WaitForObject()
local WinsText = script:GetCustomProperty("Wins"):WaitForObject()
local FastestTimeText = script:GetCustomProperty("FastestTime"):WaitForObject()

local LocalPlayer = Game.GetLocalPlayer()

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

local function updateLabels()
	local coins, wins, fastestTime =
		LocalPlayer:GetResource("Coins"),
		LocalPlayer:GetResource("Wins"),
		LocalPlayer:GetResource("HighScore")

	if(not coins) then coins = 0 end
	if(not wins) then wins = 0 end
	if((not fastestTime) or (fastestTime == 0)) then fastestTime = GameScript:GetCustomProperty("DefaultTime") * 1000 end

	CoinsText.text = tostring(coins)
	WinsText.text = tostring(wins)

	FastestTimeText.text = GetFormattedTime(fastestTime / 1000)
end

LocalPlayer.resourceChangedEvent:Connect(updateLabels)
updateLabels()