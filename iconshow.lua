local function check_and_click()
    local keytoclick = getgenv().keytoclick or "V" -- Default key is "V"

    while true do
        -- Check if the object exists
        local object_exists = locate_object()

        if not object_exists then
            -- Recreate the object
            print("Object not found. Recreating...")
            recreate_object()
        else
            -- Click the "V" key
            press_key_v(keytoclick)
            print("Clicked '" .. keytoclick .. "'")
        end

        -- Add a short delay to avoid high CPU usage
        wait(1)
    end
end

function locate_object()
    -- Function to locate the object
    -- Replace this with your logic to locate the object
    return true -- Replace with actual detection logic
end

function recreate_object()
    -- Function to recreate the object
    -- Replace this with your logic to recreate the object
    print("Recreating object...")
    -- Code to recreate the object goes here
end

function press_key_v(key)
    -- Function to press the specified key
    print("Pressing '" .. key .. "'")
    -- Replace this with your logic to press the specified key
end

local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")

-- Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.5, -50, 0.5, -50)
ImageLabel.Size = UDim2.new(0, 100, 0, 100)
ImageLabel.Image = "http://www.roblox.com/asset/?id=16599489351"  -- Replace with your image ID

-- Wait for 5 seconds
wait(5)

-- Execute script
check_and_click()

-- Remove the loader
ScreenGui:Destroy()
