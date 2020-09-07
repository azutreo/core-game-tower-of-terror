local Content = script:GetCustomProperty("Content"):WaitForObject()
local CategoriesContainer = script:GetCustomProperty("Categories"):WaitForObject()
local CategoryContent = script:GetCustomProperty("CategoryContent"):WaitForObject()
local ToggleButton = script:GetCustomProperty("Toggle"):WaitForObject()
local GridChildTemplate = script:GetCustomProperty("GridChild")
local ShopData = require(script:GetCustomProperty("ShopData"))

local LocalPlayer = Game.GetLocalPlayer()

local activeCategory = "Modifiers"

local trails

local function changeCategory(button)
	local categoryLabel = button.parent
	activeCategory = categoryLabel.name

	for _, child in pairs(CategoryContent:GetChildren()) do
		if(child.name == categoryLabel.name) then
			child.visibility = Visibility.FORCE_ON
		else
			child.visibility = Visibility.FORCE_OFF
		end
	end

	categoryLabel:SetColor(Color.New(0.031, 0.031, 0.031, 1))
	button:SetFontColor(Color.New(1, 1, 1, 1))

	for _, otherCategoryLabel in pairs(CategoriesContainer:GetChildren()) do
		if(otherCategoryLabel.name ~= "Split") then
			if(otherCategoryLabel.name ~= categoryLabel.name) then
				local otherButton = otherCategoryLabel:FindChildByName("Button")

				otherCategoryLabel:SetColor(Color.New(1, 1, 1, 1))
				otherButton:SetFontColor(Color.New(0.031, 0.031, 0.031, 1))
			end
		end
	end
end

local function buttonHovered(button)
	local categoryLabel = button.parent
	if(categoryLabel.name == activeCategory) then return end

	categoryLabel:SetColor(Color.New(0.031 * 2, 0.031 *2, 0.031 * 2, 1))
	button:SetFontColor(Color.New(1, 1, 1, 1))
end

local function buttonUnhovered(button)
	local categoryLabel = button.parent
	if(categoryLabel.name == activeCategory) then return end

	categoryLabel:SetColor(Color.New(1, 1, 1, 1))
	button:SetFontColor(Color.New(0.031 * 2, 0.031 * 2, 0.031 * 2, 1))
end

local function hasTrail(trailId)
	for _, trail in pairs(trails) do
		if(trail == trailId) then
			return true
		end
	end

	return false
end

local function setupCategory(categoryLabel)
	local button = categoryLabel:FindChildByName("Button")
	if(not Object.IsValid(button)) then return end
	if(not button:IsA("UIButton")) then return end

	local categoryGrid = CategoryContent:FindChildByName(categoryLabel.name)
	if(not Object.IsValid(categoryGrid)) then return end

	button.hoveredEvent:Connect(buttonHovered)
	button.unhoveredEvent:Connect(buttonUnhovered)
	button.clickedEvent:Connect(changeCategory)

	for _, child in pairs(categoryGrid:GetChildren()) do
		if(child:IsA("UIImage")) then
			child:Destroy()
		end
	end

	local currentTrail = LocalPlayer:GetResource("CurrentTrail")

	local categoryData = ShopData[categoryLabel.name]
	for index, item in ipairs(categoryData) do
		local child = World.SpawnAsset(GridChildTemplate, {parent = categoryGrid})
		child.name = item.name

		local buttonZ, itemNameText, itemPriceImage =
			child:FindChildByName("Button"),
			child:FindChildByName("ItemName"),
			child:FindChildByName("ItemPrice")

		itemNameText.text = item.name

		local doesHaveTrail = ((categoryLabel.name == "Trails") and hasTrail(item.id)) or false

		local equipped = false

		local itemPriceText = itemPriceImage:FindChildByName("Price")
		if(categoryLabel.name == "Modifiers") then
			itemPriceText.text = string.format("%s Coins", item.price)
		elseif(item.id == currentTrail) then
			itemPriceText.text = "Equipped"
			itemPriceImage:SetColor(Color.New(0.01, 0.01, 0.01))
			equipped = true
		elseif(doesHaveTrail) then
			itemPriceText.text = "Equip"
			itemPriceImage:SetColor(Color.New(0.072272, 0.428691, 0.06022))
		else
			itemPriceText.text = string.format("%s Coins", item.price)
		end

		buttonZ.hoveredEvent:Connect(function()
			child:SetColor(Color.New(100/255, 100/255, 100/255, 1))
		end)
		buttonZ.unhoveredEvent:Connect(function()
			child:SetColor(Color.New(1, 1, 1, 1))
		end)
		buttonZ.clickedEvent:Connect(function(buttonClicked)
			if(categoryLabel.name == "Modifiers") then
				Events.BroadcastToServer("PurchaseModifier", item.name)
			elseif(categoryLabel.name == "Trails") then
				if(doesHaveTrail) then
					if(not equipped) then
						Events.BroadcastToServer("EquipTrail", item.id)
					end
				else
					Events.BroadcastToServer("PurchaseTrail", item.id)
				end
			end
		end)
	end
end

local function toggleShop()
	local camera = LocalPlayer:GetActiveCamera()

	if(Content.visibility == Visibility.FORCE_ON) then
		Content.visibility = Visibility.FORCE_OFF
		UI.SetCursorVisible(false)
		UI.SetCanCursorInteractWithUI(false)

		camera.followPlayer = LocalPlayer
		camera.rotationMode = RotationMode.LOOK_ANGLE
		camera.isDistanceAdjustable = true
	elseif(Content.visibility == Visibility.FORCE_OFF) then
		Content.visibility = Visibility.FORCE_ON
		UI.SetCursorVisible(true)
		UI.SetCanCursorInteractWithUI(true)

		camera.followPlayer = nil
		camera.rotationMode = RotationMode.CAMERA
		camera.isDistanceAdjustable = false
	end
end

local function generateShop()
	for _, categoryLabel in pairs(CategoriesContainer:GetChildren()) do
		if(categoryLabel.name ~= "Split") then
			setupCategory(categoryLabel)
		end
	end
end

local function setTrails(newTrails)
	trails = newTrails
	generateShop()
end

local function updateShop(player, resourceName, resourceValue)
	if(resourceName ~= "CurrentTrail") then return end

	generateShop()
end

Events.Connect("SetTrails", setTrails)

ToggleButton.clickedEvent:Connect(toggleShop)
LocalPlayer.bindingReleasedEvent:Connect(function(player, binding)
	if(binding ~= "ability_extra_40") then return end

	toggleShop()
end)
LocalPlayer.resourceChangedEvent:Connect(updateShop)

while(not trails) do
	Events.BroadcastToServer("GetTrails")
	Task.Wait(1)
end