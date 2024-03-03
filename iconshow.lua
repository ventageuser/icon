-- Set the keytoclick value to "V"
getgenv().keytoclick = "V"

-- Get the VirtualInputManager service
local vim = game:GetService("VirtualInputManager")

-- Function to handle button click
local function onButtonClick()
    -- Send the key event for V directly
    vim:SendKeyEvent(true, Enum.KeyCode.V, false, game)
end

-- Create ScreenGui, Frame, and ImageButton
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Enabled = true -- Ensure the ScreenGui is always enabled

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

-- Ensure that the GUI stays visible after the player dies
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    ScreenGui.Enabled = true
end)

-- Check if the player is dead when the script runs
if game.Players.LocalPlayer.Character == nil then
    ScreenGui.Enabled = true
end
