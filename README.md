local UserInputService = game:GetService("UserInputService")

local keybindEnabled = false

-- Function to handle the key press event
local function onKeyPress(input)
    if input.KeyCode == Enum.KeyCode.V and keybindEnabled then
        -- Add your desired functionality here
        print("Key 'V' was pressed!")
    end
end

-- Function to toggle the keybind
local function toggleKeybind(enabled)
    keybindEnabled = enabled
    print("Keybind enabled:", enabled)
end

-- Load the icon script and listen for its callback
local iconScript = loadstring(game:HttpGet(('https://raw.githubusercontent.com/therealzeek/icon/main/README.md')))({
    Callback = function(enabled)
        toggleKeybind(enabled)
    end
})

-- Connect the key press event to the function
UserInputService.InputBegan:Connect(onKeyPress)
