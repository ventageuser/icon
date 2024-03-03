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
ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.IgnoreGuiInset = true
ScreenGui.DisplayOrder = 999
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, -50, 0.5, -50) -- Center the Frame
Frame.Size = UDim2.new(0, 100, 0, 100)

local ImageButton = Instance.new("ImageButton")
ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Size = UDim2.new(1, 0, 1, 0)
ImageButton.Image = "http://www.roblox.com/asset/?id=16599489351"

-- Connect button click event to the function
ImageButton.MouseButton1Click:Connect(onButtonClick)

-- Keep GUI visible
game:GetService("RunService").RenderStepped:Connect(function()
    ScreenGui.Enabled = true
end)
