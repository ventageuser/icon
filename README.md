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
Frame.Position = UDim2.new(0.122705311, 0, 0.183706075, 0)
Frame.Size = UDim2.new(0, 100, 0, 100)

ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0, 0, -0.0799999982, 0)
ImageButton.Size = UDim2.new(0, 37, 0, 35)
ImageButton.Image = "http://www.roblox.com/asset/?id=16599489351"

-- Scripts:

local function VGLE_fake_script() -- ImageButton.LocalScript 
    local script = Instance.new('LocalScript', ImageButton)

    local button = script.Parent
    button.MouseButton1Click:Connect(function()
        game:GetService("UserInputService"):FireKeyEvent(
            button,
            Enum.KeyCode.V,
            false,
            Enum.UserInputType.Keyboard
        )
    end)
end
coroutine.wrap(VGLE_fake_script)()
