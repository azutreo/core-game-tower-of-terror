local PrefixTags = require(script:GetCustomProperty("PrefixTags"))
local HelpfulFunctions = require(script:GetCustomProperty("HelpfulFunctions"))
local TeleportGameId = script:GetCustomProperty("TeleportGameId")

local fly_bind = "ability_extra_42"

local function kickPlayer(player, playerToEdit)
    local playerToEditGroup = PrefixTags:GetPlayerPrefix(playerToEdit)
    if(playerToEditGroup and playerToEditGroup.isModerator) then return end

	playerToEdit:TransferToGame("071216/land-of-bans")
    --playerToEdit:TransferToGame(TeleportGameId)
end

local function flyPlayer(player, playerToEdit)
    if(playerToEdit.isFlying) then
        playerToEdit:ActivateWalking()
    else
        playerToEdit:ActivateFlying()
    end
end

local function killPlayer(player, playerToEdit)
    if(playerToEdit.isDead) then return end

    playerToEdit:EnableRagdoll()
    Task.Wait(3)
	playerToEdit:Die()
end

local function teleportToPlayer(player, playerToEdit)
    player:SetWorldPosition(playerToEdit:GetWorldPosition())
end

local function bringPlayer(player, playerToEdit)
    playerToEdit:SetWorldPosition(player:GetWorldPosition())
end

local function editPlayer(player, editType, playerToEditName)
    local playerGroup = PrefixTags:GetPlayerPrefix(player)
    if(not playerGroup) then return end
    if(not playerGroup.isModerator) then return end

    local playerToEdit = HelpfulFunctions:FindPlayerByName(playerToEditName)

    if(editType == "Kick") then
        kickPlayer(player, playerToEdit)
    elseif(editType == "Fly") then
        flyPlayer(player, playerToEdit)
    elseif(editType == "Kill") then
        killPlayer(player, playerToEdit)
    elseif(editType == "TeleportTo") then
        teleportToPlayer(player, playerToEdit)
    elseif(editType == "Bring") then
        bringPlayer(player, playerToEdit)
    end
end

local function bindingReleased(player, binding)
    if(binding ~= fly_bind) then return end
    local playerGroup = PrefixTags:GetPlayerPrefix(player)
    if(not playerGroup) then return end
    if(not playerGroup.isModerator) then return end

    flyPlayer(player, player)
end

local function playerJoined(player)
    local playerGroup = PrefixTags:GetPlayerPrefix(player)
    if(not playerGroup) then return end
    if(not playerGroup.isModerator) then return end

    player.bindingReleasedEvent:Connect(bindingReleased)
end

Events.ConnectForPlayer("EditPlayer", editPlayer)
Game.playerJoinedEvent:Connect(playerJoined)