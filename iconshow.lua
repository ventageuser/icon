local UserInputService = game:GetService("UserInputService")

-- Function to handle the key press event
local function onKeyPress(input)
    if input.KeyCode == Enum.KeyCode.V then
        -- Call the function to perform the desired action directly
        performAction()
    end
end

-- Connect the key press event to the function
UserInputService.InputBegan:Connect(onKeyPress)

-- Function to perform the desired action
local function performAction()
    -- Add your desired action here
    print("Key 'V' pressed or image button clicked!")
end

-- Rest of your code
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageButton = Instance.new("ImageButton")

--Properties:
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
ImageButton.Position = UDim2.new(0.579999983, 0, 0.680000007, 0)
ImageButton.Size = UDim2.new(0, 39, 0, 39)
ImageButton.Image = "http://www.roblox.com/asset/?id=16599489351"

-- Connect the ImageButton click event to perform the action
ImageButton.MouseButton1Click:Connect(performAction)
