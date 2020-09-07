local NameplateTemplate = script:GetCustomProperty("NameplateTemplate")
local PrefixTags = require(script:GetCustomProperty("PrefixTags"))

local LocalPlayer = Game.GetLocalPlayer()

local nameplates = {}

local function playerJoined(player)
    local nameplate = World.SpawnAsset(NameplateTemplate)
    nameplates[player] = nameplate

    local nameplateName, nameplatePrefix = 
        nameplate:FindChildByName("Name"),
        nameplate:FindChildByName("Prefix")
    
    nameplateName.text = player.name

    local playerPrefix = PrefixTags:GetPlayerPrefix(player)
    if(playerPrefix) then
        nameplatePrefix.text = playerPrefix.text
        nameplatePrefix:SetColor(playerPrefix.color)
    end
    
	nameplate:AttachToPlayer(player, "Nameplate")
end

local function playerLeft(player)
    local nameplate = nameplates[player]
    if(not nameplate) then return end

    nameplate:Destroy()
	nameplates[player] = nil
end

local function rotateNameplate(nameplate)
	local quat = Quaternion.New(LocalPlayer:GetViewWorldRotation())
	quat = quat * Quaternion.New(Vector3.UP, 180.0)
	nameplate:SetWorldRotation(Rotation.New(quat))
end

function Tick(deltaTime)
    for _, nameplate in pairs(nameplates) do
        if(Object.IsValid(nameplate)) then
            rotateNameplate(nameplate)
        end
    end
end

Game.playerJoinedEvent:Connect(playerJoined)
Game.playerLeftEvent:Connect(playerLeft)