local textBox = script:GetCustomProperty("TextBox"):WaitForObject()

local lastMessage = ""

local function message(message)
    lastMessage = message

    textBox.text = message

    Task.Wait(2)
    if(lastMessage ~= message) then return end

    textBox.text = ""
end

Events.Connect("Message", message)