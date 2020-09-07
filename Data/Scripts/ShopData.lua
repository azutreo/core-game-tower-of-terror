local Game = script:GetCustomProperty("Game"):WaitForObject()

local trails = {
	white = script:GetCustomProperty("WhiteTrail"),
	teal = script:GetCustomProperty("TealTrail"),
	red = script:GetCustomProperty("RedTrail"),
	magenta = script:GetCustomProperty("MagentaTrail"),
	purple = script:GetCustomProperty("PurpleTrail"),
	blue = script:GetCustomProperty("BlueTrail"),
	green = script:GetCustomProperty("GreenTrail"),
	yellow = script:GetCustomProperty("YellowTrail"),
	orange = script:GetCustomProperty("OrangeTrail"),
	rgb = script:GetCustomProperty("RGBTrail"),
}

return {
    Modifiers = {
        {
            name = "Increase Multiplier (Global)",
            price = 40,
            func = function(player)
                Game:SetNetworkedCustomProperty("Multiplier", Game:GetCustomProperty("Multiplier") * 2)
                Events.BroadcastToAllPlayers("Message", string.format("%s has increased the multiplier!", player.name))

                return true
            end
        },
        {
            name = "Decrease Multiplier (Global)",
            price = 40,
            func = function(player)
				if(Game:GetCustomProperty("Multiplier") < 1) then return false end

                Game:SetNetworkedCustomProperty("Multiplier", Game:GetCustomProperty("Multiplier") / 2)
                Events.BroadcastToAllPlayers("Message", string.format("%s has decreased the multiplier!", player.name))

                return true
            end
        }
    },
    Trails = {
		{
			id = 1,
			name = "White Trail",
			price = 60,
			template = trails.white
		},
		{
			id = 2,
			name = "Teal Trail",
			price = 60,
			template = trails.teal
		},
		{
			id = 3,
			name = "Red Trail",
			price = 60,
			template = trails.red
		},
		{
			id = 4,
			name = "Magenta Trail",
			price = 60,
			template = trails.magenta
		},
		{
			id = 5,
			name = "Purple Trail",
			price = 60,
			template = trails.purple
		},
		{
			id = 6,
			name = "Blue Trail",
			price = 60,
			template = trails.blue
		},
		{
			id = 7,
			name = "Green Trail",
			price = 60,
			template = trails.green
		},
		{
			id = 8,
			name = "Yellow Trail",
			price = 60,
			template = trails.yellow
		},
		{
			id = 9,
			name = "Orange Trail",
			price = 60,
			template = trails.orange
		},
		{
			id = 10,
			name = "RGB Trail",
			price = 300,
			template = trails.rgb,
		},
	},
}