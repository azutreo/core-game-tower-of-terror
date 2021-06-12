local GameScript = script:GetCustomProperty("Game"):WaitForObject()
local timerLabel = script:GetCustomProperty("Timer"):WaitForObject()
local multiplierLabel = script:GetCustomProperty("Multiplier"):WaitForObject()

local function setTimer()
	local totalSeconds = math.floor(GameScript:GetCustomProperty("Timer"))

	local minutes = math.floor(totalSeconds / 60)
	local seconds = math.floor(totalSeconds - (60 * minutes))

	timerLabel.text = string.format("%002i:%002i", tostring(minutes), tostring(seconds))
end

local function setMultiplier()
	local multiplier = GameScript:GetCustomProperty("Multiplier")

	if(multiplier == 1) then
		multiplierLabel.text = ""
	else
		multiplierLabel.text = string.format("x%s", multiplier)
	end
end

function Tick(deltaTime)
	setTimer()
	setMultiplier()
end