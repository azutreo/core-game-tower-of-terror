local GameServer = script:GetCustomProperty("Game"):WaitForObject()
local PlayerStagePositionTemplate = script:GetCustomProperty("PlayerStagePositionTemplate")
local PlayerStageTemplate = script:GetCustomProperty("PlayerStageTemplate")
local StagesFolder = script:GetCustomProperty("StagesFolder"):WaitForObject()
local BackgroundFrame = script:GetCustomProperty("BackgroundFrame"):WaitForObject()
local PlayersFrame = script:GetCustomProperty("PlayersFrame"):WaitForObject()
local StagesFrame = script:GetCustomProperty("StagesFrame"):WaitForObject()
local PrefixTags = require(script:GetCustomProperty("PrefixTags"))
local HelpfulFunctions = require(script:GetCustomProperty("HelpfulFunctions"))

local function updateStages(order)
    if(not order) then return end

    for _, child in pairs(StagesFrame:GetChildren()) do
        child:Destroy()
    end

    local highestPoint = GameServer:GetCustomProperty("HighestPoint")

    repeat Task.Wait() until #StagesFolder:GetChildren() >= 6

    local lastPercent = 0
    for index, stageName in ipairs(order) do
        local stage = HelpfulFunctions:WaitForChild(StagesFolder, stageName)

        local top = HelpfulFunctions:WaitForChild(stage, "Top")

        local color = stage:GetCustomProperty("Color")
        local percent = CoreMath.Round(top:GetWorldPosition().z / highestPoint.z, 3)

        local frame = World.SpawnAsset(PlayerStageTemplate, {parent = StagesFrame})
        frame:SetColor(color)
        frame.height = math.ceil((BackgroundFrame.height * percent) - (BackgroundFrame.height * lastPercent))
        frame.y = frame.height - math.ceil(BackgroundFrame.height * percent)
        frame.name = stage.name
        
        lastPercent = percent
    end
end

local function updatePlayerPosition(player, highestPoint)
    local difference = highestPoint - player:GetWorldPosition()
    
    local percent = CoreMath.Round(1 - (difference.z / highestPoint.z), 2)
    
    local playerFrame = PlayersFrame:FindChildByName(player.name)
    if(not playerFrame) then return end

    playerFrame.y = CoreMath.Clamp((BackgroundFrame.height - (BackgroundFrame.height * percent)) - BackgroundFrame.height, -BackgroundFrame.height, 0) - (playerFrame.height / 2)
end

function Tick()
    local highestPoint = GameServer:GetCustomProperty("HighestPoint") 
    for _, player in pairs(Game.GetPlayers()) do
        updatePlayerPosition(player, highestPoint)
    end
end

local function playerJoined(player)    
    local playerFrame = World.SpawnAsset(PlayerStagePositionTemplate, {
        parent = PlayersFrame
    })

    playerFrame.name = player.name
    playerFrame:SetImage(player)
    local nameText = playerFrame:FindChildByName("PlayerName")
    nameText.text = player.name
        
    local playerPrefix = PrefixTags:GetPlayerPrefix(player)
    if(playerPrefix) then
        nameText:SetColor(playerPrefix.color)
    end
end

local function playerLeft(player)
    local playerFrame = PlayersFrame:FindChildByName(player.name)
    if(playerFrame) then
        playerFrame:Destroy()
    end
end

Game.playerJoinedEvent:Connect(playerJoined)
Game.playerLeftEvent:Connect(playerLeft)

Events.Connect("UpdateStages", updateStages)