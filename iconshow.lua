-- Set the keytoclick value to "V"
getgenv().keytoclick = "V"

-- Get the VirtualInputManager service
local vim = game:GetService("VirtualInputManager")

-- Function to handle button click
local function onButtonClick()
    -- Send the key event for V directly
    vim:SendKeyEvent(true, Enum.KeyCode.V, false, game)
end

-- Function to create the GUI
local function createGUI(character)
    -- Create ScreenGui, Frame, and ImageButton
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local Frame = Instance.new("Frame")
    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.BackgroundTransparency = 1
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Size = UDim2.new(0, 100, 0, 100)

    local ImageButton = Instance.new("ImageButton")
    ImageButton.Parent = Frame
    ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderSizePixel = 0
    ImageButton.Position = UDim2.new(0.58, 0, 0.68, 0)
    ImageButton.Size = UDim2.new(0, 39, 0, 39)
    ImageButton.Image = "http://www.roblox.com/asset/?id=16599489351"

    -- Connect button click event to the function
    ImageButton.MouseButton1Click:Connect(onButtonClick)
end

-- Function to handle character added event
local function onCharacterAdded(character)
    createGUI(character)
end

-- Connect the CharacterAdded event to the onCharacterAdded function
game.Players.LocalPlayer.CharacterAdded:Connect(onCharacterAdded)

-- Create GUI initially if character already exists
if game.Players.LocalPlayer.Character then
    createGUI(game.Players.LocalPlayer.Character)
end
