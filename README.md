local UserInputService = game:GetService("UserInputService")

-- Function to handle the key press event
local function triggerKeyPress()
    UserInputService.InputBegan:Fire({ KeyCode = Enum.KeyCode.V }, false)
end

-- Load the icon script and trigger the keybind
local iconScript = loadstring(game:HttpGet(('https://raw.githubusercontent.com/therealzeek/icon/main/README.md')))({
    Callback = function()
        triggerKeyPress()
    end
})
