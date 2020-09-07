local GameScript = script:GetCustomProperty("Game"):WaitForObject()
local CoinsText = script:GetCustomProperty("Coins"):WaitForObject()
local WinsText = script:GetCustomProperty("Wins"):WaitForObject()
local FastestTimeText = script:GetCustomProperty("FastestTime"):WaitForObject()

local LocalPlayer = Game.GetLocalPlayer()

local function updateLabels()
    local coins, wins, fastestTime =
        LocalPlayer:GetResource("Coins"),
        LocalPlayer:GetResource("Wins"),
        LocalPlayer:GetResource("HighScore")
    
    if(not coins) then coins = 0 end
    if(not wins) then wins = 0 end
    if((not fastestTime) or (fastestTime == 0)) then fastestTime = GameScript:GetCustomProperty("DefaultTime") * 60 * 60 * 100 end
    fastestTime = fastestTime / 60 / 60 / 100

    CoinsText.text = tostring(coins)
    WinsText.text = tostring(wins)

    local minutes = math.floor(fastestTime / 60)
    local seconds = math.floor(fastestTime - (60 * minutes))
    local milliseconds = (seconds * 100) - seconds
    
    FastestTimeText.text = string.format("%002i:%002i.%002i", tostring(minutes), tostring(seconds), tostring(milliseconds))
end

LocalPlayer.resourceChangedEvent:Connect(updateLabels)
updateLabels()