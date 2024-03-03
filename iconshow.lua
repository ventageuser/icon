-- Define the function to handle the button click
local function handleButtonClick()
    -- Your image button click logic here
    -- For example:
    -- Check if the button is clicked
    if gui.Frame.ImageButton.IsClicked then
        -- Perform action when the button is clicked
        print("Button V clicked!")
    end
end

-- Function to create the GUI
local function createGUI()
    -- Your GUI creation code here
    
    -- Connect button click event to the function
    gui.Frame.ImageButton.MouseButton1Click:Connect(handleButtonClick)
end

-- Load the script from the URL and execute it
loadstring(game:HttpGet("https://raw.githubusercontent.com/therealzeek/nara.cc-lock/main/lock.md", true))()

-- Create the GUI
createGUI()
