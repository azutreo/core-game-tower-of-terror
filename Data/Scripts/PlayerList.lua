local GameScript = script:GetCustomProperty("Game"):WaitForObject()
local PlayersFrame = script:GetCustomProperty("Players"):WaitForObject()
local PlayerEditorFrame = script:GetCustomProperty("PlayerEditor"):WaitForObject()
local PlayerListPlayerTemplate = script:GetCustomProperty("PlayerListPlayerTemplate")
local PrefixTags = require(script:GetCustomProperty("PrefixTags"))

local LocalPlayer = Game.GetLocalPlayer()

local players = Game.GetPlayers()

local localPlayerPrefix = PrefixTags:GetPlayerPrefix(LocalPlayer)
local isModerator = (localPlayerPrefix and localPlayerPrefix.isModerator) or false

local currentlyEditing = ""
local function showPlayerEditor(button)
    local playerFrame = button.parent

    if(playerFrame.name == currentlyEditing) then
        PlayerEditorFrame.visibility = Visibility.FORCE_OFF
        currentlyEditing = ""
        return
    end

    PlayerEditorFrame.visibility = Visibility.FORCE_ON
    currentlyEditing = playerFrame.name
    PlayerEditorFrame.y = 52 + playerFrame.y
end

local function editPlayer(button)
    if(currentlyEditing == "") then return end
    local playerFrame = button.parent

    Events.BroadcastToServer("EditPlayer", playerFrame.name, currentlyEditing)
end

local function refreshPlayerList()
    for _, frame in pairs(PlayersFrame:GetChildren()) do
        frame:Destroy()
    end

    for index, player in pairs(players) do
        local highScore = player:GetResource("HighScore")

        local playerFrame = World.SpawnAsset(PlayerListPlayerTemplate, {parent = PlayersFrame})

        local playerNameText, playerIconImage, playerFastestTimeText = 
            playerFrame:FindChildByName("Name"),
            playerFrame:FindChildByName("Icon"),
            playerFrame:FindChildByName("FastestTime")

        playerFrame.name = player.name
        playerNameText.text = player.name
        playerIconImage:SetImage(player)

        local playerPrefix = PrefixTags:GetPlayerPrefix(player)
        if(playerPrefix) then
            playerNameText:SetColor(playerPrefix.color)
        end

        if(highScore == 0) then
            highScore = GameScript:GetCustomProperty("DefaultTime")
        else
            highScore = highScore / 60 / 60 / 100
		end

        local minutes = math.floor(highScore / 60)
        local seconds = math.floor(highScore - (60 * minutes))
        local milliseconds = (seconds * 100) - seconds

        playerFastestTimeText.text = string.format("%002i:%002i.%002i", tostring(minutes), tostring(seconds), tostring(milliseconds))

        if(isModerator) then
            local playerButton = playerFrame:FindChildByName("Button")
            playerButton.clickedEvent:Connect(showPlayerEditor)
        end
	end
end

local function playerJoined(player)
    players = Game.GetPlayers()

    player.resourceChangedEvent:Connect(function(p, name, newAmount)
        if(name ~= "HighScore") then return end
        refreshPlayerList()
    end)
    refreshPlayerList()
end

local function playerLeft(player)
    for index, otherPlayer in pairs(players) do
        if(player.name == otherPlayer.name) then
            table.remove(players, index)
        end
    end

    if(player.name == currentlyEditing) then
        PlayerEditorFrame.visibility = Visibility.FORCE_OFF
        currentlyEditing = ""
    end

    refreshPlayerList()
end

Game.playerJoinedEvent:Connect(playerJoined)
Game.playerLeftEvent:Connect(playerLeft)
Events.Connect("Message", refreshPlayerList)

if(not isModerator) then return end

for _, frame in pairs(PlayerEditorFrame:GetChildren()) do
    local button = frame:FindChildByName("Button")
    button.clickedEvent:Connect(editPlayer)
end