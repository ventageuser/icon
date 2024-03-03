-- Function to create the GUI
local function createGUI()
    -- Create the GUI elements if they don't exist
    local ScreenGui = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
    if not ScreenGui then
        ScreenGui = Instance.new("ScreenGui")
        ScreenGui.Parent = game.Players.LocalPlayer
    end
    
    local Frame = ScreenGui:FindFirstChild("Frame")
    if not Frame then
        Frame = Instance.new("Frame")
        Frame.Name = "Frame"
        Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Frame.BackgroundTransparency = 1.000
        Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Frame.BorderSizePixel = 0
        Frame.Size = UDim2.new(0, 100, 0, 100)
        Frame.Parent = ScreenGui
    end
    
    local ImageButton = Frame:FindFirstChild("ImageButton")
    if not ImageButton then
        ImageButton = Instance.new("ImageButton")
        ImageButton.Name = "ImageButton"
        ImageButton.Parent = Frame
        ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ImageButton.BorderSizePixel = 0
        ImageButton.Position = UDim2.new(0.579999983, 0, 0.680000007, 0)
        ImageButton.Size = UDim2.new(0, 39, 0, 39)
        ImageButton.Image = "http://www.roblox.com/asset/?id=16599489351"
    end

    -- Connect clicking event to the ImageButton
    ImageButton.MouseButton1Click:Connect(function()
        clickV()
    end)
end

-- Function to load external scripts with error handling
local function loadScript(url, callback)
    local success, script = pcall(game:GetService("HttpService").GetAsync, game:GetService("HttpService"), url)
    if success then
        local loadedScript = loadstring(script)
        if loadedScript then
            local success, errorMsg = pcall(loadedScript)
            if not success then
                warn("Error executing script: " .. errorMsg)
            end
        else
            warn("Error loading script: " .. url)
        end
        -- Execute the callback function if provided
        if callback then
            callback(success, script)
        end
    else
        warn("Error fetching script from URL: " .. url)
    end
end

-- Set the key to click
getgenv().keytoclick = "V"

-- Function to click V key
local function clickV()
    local vim = game:GetService("VirtualInputManager")
    vim:SendKeyEvent(true, getgenv().keytoclick, false, game)
end

-- Create the GUI
createGUI()
