local ShopData = require(script:GetCustomProperty("ShopData"))

local function getModifier(modifierName)
	for _, modifier in pairs(ShopData.Modifiers) do
		if(modifier.name == modifierName) then
			return modifier
		end
	end
end

local function getTrail(trailId)
	for _, trail in pairs(ShopData.Trails) do
		if(trail.id == trailId) then
			return trail
		end
	end
end

local function purchaseModifier(player, modifierName)
	local modifier = getModifier(modifierName)
	if(not modifier) then return end

	local playerData = Storage.GetPlayerData(player)
	if not playerData.coins then return end
	if(playerData.coins < modifier.price) then return end

	local success = modifier.func(player)
	if(not success) then return end

	playerData.coins = playerData.coins - modifier.price
	player:SetResource("Coins", playerData.coins)
	Storage.SetPlayerData(player, playerData)
end

local function purchaseTrail(player, trailId)
	local trail = getTrail(trailId)
	if(not trail) then return end

	local playerData = Storage.GetPlayerData(player)
	if(playerData.coins < trail.price) then return end

	if(not playerData.trails) then
		playerData.trails = {}
	end

	for _, trailid in pairs(playerData.trails) do
		if(trailid == trailId) then return end
	end
	table.insert(playerData.trails, trailId)

	playerData.coins = playerData.coins - trail.price
	player:SetResource("Coins", playerData.coins)
	Storage.SetPlayerData(player, playerData)

	Events.Broadcast("EquipTrail", player, trailId)
	Events.BroadcastToPlayer(player, "SetTrails", playerData.trails)
end

Events.ConnectForPlayer("PurchaseModifier", purchaseModifier)
Events.ConnectForPlayer("PurchaseTrail", purchaseTrail)