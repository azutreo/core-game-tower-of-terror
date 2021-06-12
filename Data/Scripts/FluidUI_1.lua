-- FluidUI.lua
-- Dynamic UI: Scaling, Positioning, Max Size, Aspect Ratio, GridLayout, ListLayout
-- Scripted by Nicholas Foreman (nforeman)
-- Logo contributed by John Shoff (FearTheDev)

--[[

        Hello! Nicholas Foreman here. First of all, I want to say thank you for looking into this content! I
    really appreciate it. This was a project I really wanted to work on for Core as it's something I believe
    EVERYONE could use.

        FluidUI is a responsive User Interface Framework that allows you to design your interface
    dynamically without having to worry about the screen resolution of the users playing your games. With
    many powerful features such as screen-size scaling, grids/lists, and aspect ratios, you will have nearly
    full control over the presentation of your game.

        Getting the framework to work itself is simple. You only need one instance of this script inside of
    of a ClientContext. Any additional copies of this script will conflict with each other and you will not
    get the intended goal.

        However, utilizing the script is slightly more complicated. Each "component" utilizes Custom
    Properties that you insert into each UIComponent (ex. UITextBox). The datatypes are as follows:



    Vector4 Position: Overrides position on the screen
        X: Scale on the X Axis (0 -> 1)
        Y: Scale on the Y Axis (0 -> 1)
        Z: Pixels on the X Axis (any)
        W: Pixels on the Y Axis (any)

    Vector4 Size: Overrides size on the screen
        X: Scale on the X Axis (0 -> 1)
        Y: Scale on the Y Axis (0 -> 1)
        Z: Pixels on the X Axis (any)
        W: Pixels on the Y Axis (any)

    Vector2 MaxSize: Sets the maximum number of pixels the component can be
        X: Pixels on the X Axis
        Y: Pixels on the Y Axis

    Boolean ScaleText: If enabled and the UIComponent is a UITextBox, the text will scale with the Size property



    Float AspectRatio: Multiplier for non-dominant axis based on size of dominant axis
    Boolean AspectRatioYAxisDominant: Sets dominant axis to the Y axis instead of X axis



    Vector2 ListSize: Sets how large each component within the list is
        X: Scale on the dominant axis (0 -> 1)
        Y: Pixels on the dominant axis (any)

    Float ListGap: Pixels on the dominant axis

    Boolean ListFillHorizontal: Fills side-by-side instead of top-bottom



    Vector2 GridCount: Setting scale of grid
        X: Number of columns (side-by-side)
        Y: Number of rows (top-down)

    Vector2 GridGap: Pixels between grid members
        X: Pixels between each column
        Y: Pixels between each row

    Vector4 GridPadding: Additional pixels along the edges of the grid
        X: Pixels to the left
        Y: Pixels to the top
        Z: Pixels to the right

        W: Pixels to the bottom
    Boolean GridFillVertical: Fills top-down instead of side-to-side
--]]

--[[
    \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    BE CAREFUL WHEN EDITTING BELOW
    //////////////////////////////

    \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    BE CAREFUL WHEN EDITTING BELOW
    //////////////////////////////

    \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    BE CAREFUL WHEN EDITTING BELOW
    //////////////////////////////

    \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    BE CAREFUL WHEN EDITTING BELOW
    //////////////////////////////

    \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    BE CAREFUL WHEN EDITTING BELOW
    //////////////////////////////

    \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    BE CAREFUL WHEN EDITTING BELOW
    //////////////////////////////

    \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    BE CAREFUL WHEN EDITTING BELOW
    //////////////////////////////
--]]

local HelpfulFunctions = require(script:GetCustomProperty("HelpfulFunctions"))

local worldRootObject = World.GetRootObject()

local screenSize = UI.GetScreenSize()

local function updateSize(uiControl, Size, parentSize)
    if((Size.x ~= 0) or (Size.z ~= 0)) then
        uiControl.width = math.floor(parentSize.x * Size.x) + Size.z
    end
    if((Size.y ~= 0) or (Size.w ~= 0)) then
        uiControl.height = math.floor(parentSize.y * Size.y) + Size.w
    end
end

local function updatePosition(uiControl, Position, parentSize)
    uiControl.x = math.floor(parentSize.x * Position.x) + Position.z
    uiControl.y = math.floor(parentSize.y * Position.y) + Position.w
end

local function updateMaxSize(uiControl, MaxSize)
    if((MaxSize.x ~= 0) and (uiControl.width > MaxSize.x)) then
        uiControl.width = MaxSize.x
    end

    if((MaxSize.y ~= 0) and (uiControl.height > MaxSize.y)) then
        uiControl.height = MaxSize.y
    end
end

local function updateList(uiControl, ListSize, ListGap, ListFillHorizontal, parentSize)
    local xSize, ySize = 0, 0
    local gridGapX, gridGapY = 0, 0

    if(ListGap) then
        if(ListFillHorizontal) then
			ySize = parentSize.y
            gridGapX = ListGap

            local totalSizeX = parentSize.x - (gridGapX * ((1 / ListSize.x) - 1))

            xSize = totalSizeX / (1 / ListSize.x)
        else
            xSize = parentSize.x
            gridGapY = ListGap

			--local totalSizeY = parentSize.y - (gridGapY * ((1 / ListSize.y) - 1))

			ySize = ListSize.y--totalSizeY / (1 / ListSize.y)
        end
    else
        if(ListFillHorizontal) then
            xSize = math.floor(parentSize.x * ListSize.x) + ListSize.y
            ySize = parentSize.y
        else
            xSize = parentSize.x
            ySize = math.floor(parentSize.y * ListSize.x) + ListSize.y
        end
    end

    for index, child in ipairs(uiControl:GetChildren()) do
		child.width = math.floor(xSize)
        child.height = math.floor(ySize)

        local row = (index - 1)

        if(ListFillHorizontal) then
            child.x = math.ceil((xSize * row) + (gridGapX * row))
        else
            child.y = math.ceil((ySize * row) + (gridGapY * row))
        end
    end
end

local function updateGrid(uiControl, GridCount, GridGap, GridPadding, GridFillVertical, parentSize)
    local columns, rows = GridCount.x, GridCount.y

    local parentSizeX = parentSize.x
    local parentSizeY = parentSize.y

    if(GridPadding) then
        parentSizeX = parentSizeX - GridPadding.x - GridPadding.z
        parentSizeY = parentSizeY - GridPadding.y - GridPadding.w
    end

    local xSize, ySize
    local gridGapX, gridGapY = 0, 0
    if(GridGap) then
        gridGapX = GridGap.x
        gridGapY = GridGap.y

        local totalSizeX = parentSizeX - (gridGapX * (columns - 1))
        local totalSizeY = parentSizeY - (gridGapY * (rows - 1))

        xSize = totalSizeX / columns
        ySize = totalSizeY / rows
    else
        xSize = parentSizeX / columns
        ySize = parentSizeY / rows
    end

    for index, child in ipairs(uiControl:GetChildren()) do
        child.width = math.floor(xSize)
        child.height = math.floor(ySize)

        local column, row
        if(GridFillVertical) then
            column = math.floor((index - 1) / columns)
            row = (index - 1) % columns
        else
            column = (index - 1) % columns
            row = math.floor((index - 1) / columns)
        end

        child.x = math.ceil((xSize * column) + (gridGapX * column))
        child.y = math.ceil((ySize * row) + (gridGapY * row))
        if(GridPadding) then
            child.x = child.x + GridPadding.x
            child.y = child.y + GridPadding.y
        end
    end
end

local function updateAspectRatio(uiControl, aspectRatio, yDominantAxis)
    if(yDominantAxis) then
        uiControl.width = math.floor(uiControl.height * aspectRatio)
    else
        uiControl.height = math.floor(uiControl.width * aspectRatio)
    end
end

local function updateText(uiControl)
    uiControl.fontSize = math.floor(uiControl.height / 2)
end

local function updateUIControl(uiControl)
    if(not uiControl:IsA("UIControl")) then return end
    if(uiControl:IsA("UIContainer")) then return end

    local parent = uiControl.parent

    local parentSize
    if((not parent:IsA("UIControl")) or parent:IsA("UIContainer")) then
        parentSize = screenSize
    else
        parentSize = Vector2.New(parent.width, parent.height)
    end

	local Position = uiControl:GetCustomProperty("Position")
    if(Position) then
        updatePosition(uiControl, Position, parentSize)
    end

    local Size = uiControl:GetCustomProperty("Size")
    if(Size) then
        updateSize(uiControl, Size, parentSize)
    end

    local MaxSize = uiControl:GetCustomProperty("MaxSize")
    if(MaxSize) then
        updateMaxSize(uiControl, MaxSize)
    end

    local AspectRatio = uiControl:GetCustomProperty("AspectRatio")
    local AspectRatioYAxisDomiant = uiControl:GetCustomProperty("AspectRatioYAxisDominant")
    if(AspectRatio) then
        updateAspectRatio(uiControl, AspectRatio, AspectRatioYAxisDomiant)
    end

    local ScaleText = uiControl:GetCustomProperty("ScaleText")
    if(ScaleText and (uiControl:IsA("UIText") or uiControl:IsA("UIButton"))) then
        updateText(uiControl)
    end

    local ListSize = uiControl:GetCustomProperty("ListSize")
	local ListGap = uiControl:GetCustomProperty("ListGap")
    local ListFillHorizontal = uiControl:GetCustomProperty("ListFillHorizontal") or false
    if(ListSize) then
        updateList(uiControl, ListSize, ListGap, ListFillHorizontal, Vector2.New(uiControl.width, uiControl.height))
    end

    local GridCount = uiControl:GetCustomProperty("GridCount")
    local GridGap = uiControl:GetCustomProperty("GridGap")
    local GridPadding = uiControl:GetCustomProperty("GridPadding")
    local GridFillVertical = uiControl:GetCustomProperty("GridFillVertical")
    if(GridCount) then
        updateGrid(uiControl, GridCount, GridGap, GridPadding, GridFillVertical, Vector2.New(uiControl.width, uiControl.height))
    end
end

local function scanDescendants()
    for _, descendant in pairs(HelpfulFunctions:GetDescendants(worldRootObject)) do
        updateUIControl(descendant)
    end
end

local function descendantAdded(ancestor, descendant)
    updateUIControl(descendant)
    updateUIControl(descendant.parent)
end

function Tick(deltaTime)
    local newScreenSize = UI.GetScreenSize()
    if(newScreenSize == screenSize) then return end
    screenSize = newScreenSize

    scanDescendants()
end

worldRootObject.descendantAddedEvent:Connect(descendantAdded)
scanDescendants()