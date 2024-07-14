local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;
Notify({
Description = "shein.lol";
Title = "used this notif bc its good ig😭😭 join disco";
Duration = 15;
});

wait(0.5)

game.StarterGui:SetCore("SendNotification", {
                Title = "shein.lol",
                Text = "https://discord.com/invite/zqhKvQd8"
            })



local Enabled = true
local Prediction = 0.1398
local Notifications = true
local AimPart = "HumanoidRootPart"


local Tool = Instance.new("Tool")
Tool.RequiresHandle = false
Tool.Name = "Shein.lol"


local Camera = game:GetService("Workspace").CurrentCamera
local Mouse = game.Players.LocalPlayer:GetMouse()
local Plr

local Part = Instance.new("Part", game.Workspace)

Part.Anchored = true
Part.CanCollide = false
Part.Color = Color3.fromRGB(255,0,0)
Part.Material = Enum.Material.Neon
Part.Size = Vector3.new(0.93, 0.93, 0.93)
Part.Shape = Enum.PartType.Block

function FindClosestPlayer()
    local closestPlayer
    local shortestDistance = math.huge

    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
            v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
            local pos = Camera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude
            if magnitude < shortestDistance then
                closestPlayer = v
                shortestDistance = magnitude
            end
        end
    end
    return closestPlayer
end

Tool.Activated:Connect(function()

    if Enabled == true then
        Enabled = false
        if Notifications == true then

            Plr = FindClosestPlayer()
            TargetPlayer = tostring(Plr)
            game.StarterGui:SetCore("SendNotification", {
                Title = "shein.lol",
                Text = "where is blud aiming"
            })
        end

    else
        Plr = FindClosestPlayer()
        TargetPlayer = tostring(Plr)

        Enabled = true

        if Notifications == true then

            Plr = FindClosestPlayer()
            TargetPlayer = tostring(Plr)
            game.StarterGui:SetCore("SendNotification", {
                Title = "shein.lol",
                Text = "found a victim:" .. tostring(TargetPlayer)
            })
        end
    end
end)

game:GetService("RunService").Stepped:Connect(function()
    if Enabled == true then

        Part.Position = game.Players[TargetPlayer].Character.HumanoidRootPart.Position
    else
        Part.CFrame = CFrame.new(0, -9999, 0)

    end
end)

local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(...)
    local args = { ... }

    if Enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
        args[3] = game.Players[TargetPlayer].Character[AimPart].Position +

            (game.Players[TargetPlayer].Character[AimPart].Velocity * Prediction)

        return old(unpack(args))
    end
    return old(...)
end)

Tool.Parent = game.Players.LocalPlayer.Backpack
