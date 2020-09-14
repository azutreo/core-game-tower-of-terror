local Scenes = script:GetCustomProperty("Scenes"):WaitForObject()
local SceneStages = Scenes:FindChildByName("Stages")
local ThunderSquids = script:GetCustomProperty("ThunderSquids"):WaitForObject()

local WAIT_TIME = script:GetCustomProperty("DefaultTime")

local Stages = {
    Easy = {},
    Medium = {},
    Hard = {}
}

local winners = {}

local order = {}
local checkpoints = {}
local playerCheckpoints = {}

local beginning, ending = 
    Scenes:FindChildByName("Beginning"),
    Scenes:FindChildByName("Ending")

local endingCheckpoint = ending:FindChildByName("Checkpoint")

local function reachedEnd(trigger, player)
    if(not player:IsA("Player")) then return end
    if(script:GetCustomProperty("Timer") <= 1) then return end

    playerCheckpoints[player] = "End"
end

local function enteredCheckpoint(trigger, player)
    if(not player:IsA("Player")) then return end
    if(script:GetCustomProperty("Timer") <= 1) then return end

    for index, stageName in pairs(order) do
        if(index ~= 1) then
            if(trigger.parent.name == stageName) then
                if(playerCheckpoints[player] and (index > playerCheckpoints[player])) then
                    playerCheckpoints[player] = index
                    Events.BroadcastToPlayer(player, "Message", "You reached a new checkpoint!")
                elseif(not playerCheckpoints[player]) then
                    playerCheckpoints[player] = index
                    Events.BroadcastToPlayer(player, "Message", "You reached a new checkpoint!")
                end
            end
        end
    end
end

local function goToCheckpoint(player)
    if(script:GetCustomProperty("Timer") <= 1) then return end

    local index = playerCheckpoints[player]
    if(not index) then return end

    if((type(index) == "string") and (index == "End")) then
		player:SetWorldPosition(endingCheckpoint:GetWorldPosition())
    else
        player:SetWorldPosition(checkpoints[index]:GetWorldPosition())
    end
	player:SetWorldRotation(Rotation.New(0, 0, -90))
	Events.BroadcastToPlayer(player, "ResetCamera")
end

local function hasPlayerWon(player)
    for _, playerName in pairs(winners) do
        if(player.name == playerName) then
            return true
        end
    end

    return false
end

local function playerJoined(player)
    player.respawnedEvent:Connect(goToCheckpoint)

    local playerData = Storage.GetPlayerData(player)
    player:SetResource("HighScore", (playerData.time and math.floor(playerData.time * 60 * 60 * 100)) or (script:GetCustomProperty("DefaultTime") * 60 * 60 * 100))
    player:SetResource("Coins", playerData.coins or 0)
    player:SetResource("Wins", playerData.wins or 0)

    Task.Wait(1)
	Events.BroadcastToPlayer(player, "UpdateStages", order)

	-- if(player.name ~= "NicholasForeman") then return end
	-- local task = Task.Spawn(function()
	-- 	local pd = Storage.GetPlayerData(player)
	-- 	Events.BroadcastToPlayer(player, "Draw", pd.time)
	-- 	Task.Wait(2.885)
	-- end)
	-- task.repeatCount = -1
	-- task.repeatInterval = -1
end

local function someoneWon(trigger, player)
    if(not player:IsA("Player")) then return end
    if(hasPlayerWon(player)) then return end

    table.insert(winners, player.name)
    script:SetNetworkedCustomProperty("Multiplier", script:GetCustomProperty("Multiplier") * 2)

    local numberOfWinners = CoreMath.Clamp(#winners, 0, 3) - 1

    local playerData = Storage.GetPlayerData(player)
    playerData.wins = (playerData.wins or 0) + 1
    playerData.coins = (playerData.coins or 0) + (20 - (5 * numberOfWinners))
    player:SetResource("Coins", playerData.coins or 0)
    player:SetResource("Wins", playerData.wins or 0)

    local difference = script:GetCustomProperty("DefaultTime") - script:GetCustomProperty("Timer")
	local playerTime = playerData.time or -1
	if(playerTime == 0) then
		playerTime = -1
	end
	if(difference == 0) then
		difference = script:GetCustomProperty("DefaultTime")
	end

    local beatHighScore = false
    if(playerTime == -1) then
        playerData.time = difference
        beatHighScore = true
    elseif(difference < playerTime) then
        playerData.time = difference
        beatHighScore = true
    end

    Storage.SetPlayerData(player, playerData)
    if(beatHighScore) then
        player:SetResource("HighScore", math.floor(playerData.time * 60 * 60 * 100))
    end

    local newMinutes = math.floor(difference / 60)
    local newSeconds = math.floor(difference - (60 * newMinutes))
    local newMilliseconds = (newSeconds * 100) - newSeconds
    local newString = string.format("%002i:%002i.%002i", tostring(newMinutes), tostring(newSeconds), tostring(newMilliseconds))

    if(#Game.GetPlayers() == 1) then
        Game.EndRound()
    end

    if(not beatHighScore) then
        return Events.BroadcastToAllPlayers("Message", string.format("%s beat the tower (%s)!", player.name, newString))
    end

    if(playerTime == -1) then
        playerTime = script:GetCustomProperty("DefaultTime")
    end

    local oldMinutes = math.floor(playerTime / 60)
    local oldSeconds = math.floor(playerTime - (60 * oldMinutes))
    local oldMilliseconds = (oldSeconds * 100) - oldSeconds
    local oldString = string.format("%002i:%002i.%002i", tostring(oldMinutes), tostring(oldSeconds), tostring(oldMilliseconds))

    local message = string.format("%s beat their highscore (%s -> %s)!", player.name, oldString, newString)
    Events.BroadcastToAllPlayers("Message", message)
end

local function spawnMap(difficulty, muid, lastStage)
    local stage
    for _, possibleStage in pairs(Stages[difficulty]) do
        if(possibleStage == muid) then
            stage = possibleStage
            break
        end
    end

    local data = {
        parent = SceneStages,
        position = lastStage:FindChildByName("Top"):GetWorldPosition()
    }

    lastStage = World.SpawnAsset(stage, data)
    Events.Broadcast("UpdateKillStages", lastStage)

    return lastStage, lastStage:FindChildByName("Top"):GetWorldPosition()
end

local function generateCategory(difficulty, stages, lastStage, highestPoint)
    local previousNumbers = {}

    local numberOfStages = 0
    if(difficulty == "Easy") then
        numberOfStages = 3
    elseif(difficulty == "Medium") then
        numberOfStages = 2
    elseif(difficulty == "Hard") then
        numberOfStages = 1
    end
    if(numberOfStages == 0) then return end

    for index = 1, numberOfStages do
        local randomNumber = math.random(#stages)
        while(previousNumbers[randomNumber]) do
            randomNumber = math.random(#stages)
        end
        previousNumbers[randomNumber] = true

        local randomStage = stages[randomNumber]
        local data = {
            parent = SceneStages,
            position = lastStage:FindChildByName("Top"):GetWorldPosition()
        }

        lastStage = World.SpawnAsset(randomStage, data)
        highestPoint = lastStage:FindChildByName("Top"):GetWorldPosition()
        Events.Broadcast("UpdateKillStages", lastStage)

        table.insert(checkpoints, lastStage:FindChildByName("Checkpoint"))
        table.insert(order, lastStage.name)
    end

    return lastStage, highestPoint
end

local function generateStages()
    math.randomseed(time())

    local lastStage = beginning
    local highestPoint = lastStage:FindChildByName("Top"):GetWorldPosition()

    --lastStage, highestPoint = spawnMap("Easy", "5A40646E44382250:Easy4", lastStage)
    lastStage, highestPoint = generateCategory("Easy", Stages.Easy, lastStage, highestPoint)
    lastStage, highestPoint = generateCategory("Medium", Stages.Medium, lastStage, highestPoint)
    lastStage, highestPoint = generateCategory("Hard", Stages.Hard, lastStage, highestPoint)

    ending:SetWorldPosition(highestPoint)
    script:SetNetworkedCustomProperty("HighestPoint", highestPoint)

    Events.BroadcastToAllPlayers("UpdateStages", order)

    for _, checkpoint in pairs(checkpoints) do
        if(checkpoint:IsA("Trigger")) then
            checkpoint.beginOverlapEvent:Connect(enteredCheckpoint)
        end
    end
end

local function clearStages()
    for _, stage in pairs(SceneStages:GetChildren()) do
        stage:Destroy()
    end
end

local function roundStarted()
    Events.BroadcastToAllPlayers("Message", "Generating Stages...")
    script:SetNetworkedCustomProperty("Timer", WAIT_TIME)

    clearStages()
    generateStages()
end

local function roundEnded()
    winners = {}
    checkpoints = {}
    playerCheckpoints = {}
    order = {}

    for _, player in pairs(Game.GetPlayers()) do
        player:Die()
    end

    script:SetNetworkedCustomProperty("Multiplier", 1)
    Game.StartRound()
end

local function populateStages()
    for name, property in pairs(script:GetCustomProperties()) do
        for categoryName, _ in pairs(Stages) do
            if(string.sub(name, 1, #categoryName) == categoryName) then
                table.insert(Stages[categoryName], property)
            end
        end
    end
end

function Tick(deltaTime)
    script:SetNetworkedCustomProperty("Timer", script:GetCustomProperty("Timer") - (deltaTime * script:GetCustomProperty("Multiplier")))

    if(script:GetCustomProperty("Timer") > 0) then return end
    Game.EndRound()
end

Game.roundStartEvent:Connect(roundStarted)
Game.roundEndEvent:Connect(roundEnded)

populateStages()

Game.StartRound()

ThunderSquids.beginOverlapEvent:Connect(someoneWon)
endingCheckpoint.beginOverlapEvent:Connect(reachedEnd)

Game.playerJoinedEvent:Connect(playerJoined)