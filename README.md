-- Add your keytoclick value
getgenv().keytoclick = "V"
local vim = game:GetService("VirtualInputManager")

-- Function to handle button click
local function onButtonClick()
    vim:SendKeyEvent(true, getgenv().keytoclick, false, game)
end

-- Create ScreenGui, Frame, and ImageButton
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(0, 100, 0, 100)

local ImageButton = Instance.new("ImageButton")
ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.579999983, 0, 0.680000007, 0)
ImageButton.Size = UDim2.new(0, 39, 0, 39)
ImageButton.Image = "http://www.roblox.com/asset/?id=16599489351"

-- Connect button click event to the function
ImageButton.MouseButton1Click:Connect(onButtonClick)
