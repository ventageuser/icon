-- Set the default value for keytoclick
getgenv().keytoclick = "V"

-- Function to handle button click
local function onButtonClick()
    vim:SendKeyEvent(true, getgenv().keytoclick, false, game)
end

-- Function to create or recreate the GUI
local function createGUI()
    -- Check if the ScreenGui exists, if not create it
    local ScreenGui = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
    if not ScreenGui then
        ScreenGui = Instance.new("ScreenGui")
        ScreenGui.Parent = game.Players.LocalPlayer
    end

    -- Check if the Frame exists, if not create it
    local Frame = ScreenGui:FindFirstChild("MyFrame")
    if not Frame then
        Frame = Instance.new("Frame")
        Frame.Name = "MyFrame"
        Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Frame.BackgroundTransparency = 1.000
        Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Frame.BorderSizePixel = 0
        Frame.Size = UDim2.new(0, 100, 0, 100)
        Frame.Parent = ScreenGui
    end

    -- Check if the ImageButton exists, if not create it
    local ImageButton = Frame:FindFirstChild("MyImageButton")
    if not ImageButton then
        ImageButton = Instance.new("ImageButton")
        ImageButton.Name = "MyImageButton"
        ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ImageButton.BorderSizePixel = 0
        ImageButton.Position = UDim2.new(0.579999983, 0, 0.680000007, 0)
        ImageButton.Size = UDim2.new(0, 39, 0, 39)
        ImageButton.Image = "http://www.roblox.com/asset/?id=16599489351"
        ImageButton.Parent = Frame
    end

    -- Connect button click event to the function
    ImageButton.MouseButton1Click:Connect(onButtonClick)
end

-- Call createGUI function initially
createGUI()

-- Loop to constantly check if the GUI exists, and recreate it if needed
while true do
    wait(1) -- Adjust the interval as needed
    if not game.Players.LocalPlayer:FindFirstChild("PlayerGui") then
        createGUI()
    end
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/therealzeek/smooth-lock/main/script.md”, true))()
