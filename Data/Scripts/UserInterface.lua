local UserInterface = script:GetCustomProperty("UserInterface"):WaitForObject()

for _, container in pairs(UserInterface:GetChildren()) do
    if(container:IsA(("UIContainer"))) then
        container.visibility = Visibility.FORCE_ON
    end
end