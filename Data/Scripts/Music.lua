local MusicFolder = script:GetCustomProperty("Music"):WaitForObject()
local StagesFolder = script:GetCustomProperty("Stages"):WaitForObject()

local LocalPlayer = Game.GetLocalPlayer()

local currentSong = "None"

local triggers = {}

local function playerEnteredTrigger(trigger, player)
    if(not player:IsA("Player")) then return end
    if(player ~= LocalPlayer) then return end

    local isEasy, isMedium, isHard =
        string.sub(trigger.parent.name, 1, 4)  == "Easy",
        string.sub(trigger.parent.name, 1, 6)  == "Medium",
        string.sub(trigger.parent.name, 1, 4)  == "Hard"
    
    if((not isEasy) and (not isMedium) and (not isHard)) then return end
    
    if(isEasy and (currentSong == "Easy")) then return end
    if(isMedium and (currentSong == "Medium")) then return end
    if(isHard and (currentSong == "Hard")) then return end

    if(isEasy) then
        currentSong = "Easy"
        MusicFolder:FindChildByName(currentSong):FadeIn(1)
    elseif(isMedium) then
        currentSong = "Medium"
        MusicFolder:FindChildByName(currentSong):FadeIn(1)
    elseif(isHard) then
        currentSong = "Hard"
        MusicFolder:FindChildByName(currentSong):FadeIn(1)
    end

    for _, song in pairs(MusicFolder:GetChildren()) do
        if(song.name ~= currentSong) then
            song:FadeOut(1)
        end
    end
end

local function childAdded(parent, child)
    local isEasy, isMedium, isHard =
        string.sub(child.name, 1, 4)  == "Easy",
        string.sub(child.name, 1, 6)  == "Medium",
        string.sub(child.name, 1, 4)  == "Hard"
    
    if((not isEasy) and (not isMedium) and (not isHard)) then return end

    local musicTrigger = child:FindChildByName("Music")
    if(not musicTrigger) then
        while(not musicTrigger) do
            musicTrigger = child:FindChildByName("Music")
            Task.Wait()
        end
    end

    table.insert(triggers, musicTrigger)
    musicTrigger.destroyEvent:Connect(function()
        for index, trigger in pairs(triggers) do
            if(trigger == musicTrigger) then
                table.remove(triggers, index)
            end
        end
    end)
end

function Tick()
    local activeTrigger, activeType = nil, 0
    for _, trigger in pairs(triggers) do
        if(trigger:IsOverlapping(LocalPlayer)) then
            local isEasy, isMedium, isHard =
                string.sub(trigger.parent.name, 1, 4)  == "Easy",
                string.sub(trigger.parent.name, 1, 6)  == "Medium",
                string.sub(trigger.parent.name, 1, 4)  == "Hard"
            
            local difficulty = (isEasy and 1) or (isMedium and 2) or (isHard and 3)

            if(activeType) then
                if(difficulty > activeType) then
                    activeTrigger = trigger
                    activeType = difficulty
                end
            else
                activeTrigger = trigger
                activeType = difficulty
            end
        end
    end
    if(not activeTrigger) then return end

    playerEnteredTrigger(activeTrigger, LocalPlayer)
end

StagesFolder.childAddedEvent:Connect(childAdded)
for _, child in pairs(StagesFolder:GetChildren()) do
    childAdded(StagesFolder, child)
end