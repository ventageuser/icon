local keytoclick = getgenv().keytoclick or "V" -- Default key is "V"
local vim = game:GetService("VirtualInputManager")

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageButton = Instance.new("ImageButton")

-- Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(0, 100, 0, 100)

ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.5, -19.5, 0.5, -19.5) -- Center the button
ImageButton.Size = UDim2.new(0, 39, 0, 39)
ImageButton.Image = "http://www.roblox.com/asset/?id=16599489351" -- Make sure the image URL is correct

-- Optional: Connect a function to the MouseButton1Click event to perform an action when the button is clicked
ImageButton.MouseButton1Click:Connect(function()
    print("ImageButton clicked!")
    vim:SendKeyEvent(true, keytoclick, false, game)
end)
