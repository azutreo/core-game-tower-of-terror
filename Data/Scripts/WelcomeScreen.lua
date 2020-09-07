local WelcomeScreen = script:GetCustomProperty("Welcome"):WaitForObject()

local LocalPlayer = Game.GetLocalPlayer()

local mKeyBind = "ability_extra_45"

local function hideScreen(player, binding)
    if(player ~= LocalPlayer) then return end
    if(binding ~= mKeyBind) then return end

    if(WelcomeScreen.visibility == Visibility.FORCE_OFF) then
        WelcomeScreen.visibility = Visibility.FORCE_ON
    elseif(WelcomeScreen.visibility == Visibility.FORCE_ON) then
        WelcomeScreen.visibility = Visibility.FORCE_OFF
    end
end

LocalPlayer.bindingReleasedEvent:Connect(hideScreen)