getgenv().Desync = false
getgenv().KeyBind = Enum.KeyCode.M 

getgenv().DirectionToShoot = "Down"

local uis = game:service'UserInputService'
uis.InputBegan:Connect(
    function(a, t)
        if not t then
            if a.KeyCode == getgenv().KeyBind and getgenv().Desync == false then
                getgenv().Desync = true
                game.StarterGui:SetCore("SendNotification", {
                    Title = "F4ir";
                    Text = "ON";
                    Icon = "rbxassetid://17388673657";
                    Duration = 5;
                    })
                elseif a.KeyCode == getgenv().KeyBind and getgenv().Desync == true then
                getgenv().Desync = false
                game.StarterGui:SetCore("SendNotification", {
                    Title = "F4ir";
                    Text = "OFF";
                    Icon = "rbxassetid://17388673657";
                    Duration = 5;
                    })
            end
        end
end)

getgenv().Direction = nil

if getgenv().DirectionToShoot == "Behind" then
getgenv().Direction = Vector3.new(0, 0, -1)
elseif getgenv().DirectionToShoot == "Down" then
getgenv().Direction = Vector3.new(0, -1, 0)
elseif getgenv().DirectionToShoot == "ForWard" then
getgenv().Direction = Vector3.new(0, 0, 1)
elseif getgenv().DirectionToShoot == "Left" then
getgenv().Direction = Vector3.new(-1, 0, 0)
elseif getgenv().DirectionToShoot == "One" then
getgenv().Direction = Vector3.new(1, 1, 1)
elseif getgenv().DirectionToShoot == "Right" then
getgenv().Direction = Vector3.new(1, 0, 0)
elseif getgenv().DirectionToShoot == "Up" then
getgenv().Direction = Vector3.new(0, 1, 0)
elseif getgenv().DirectionToShoot == "Zero" then
getgenv().Direction = Vector3.new(0, 0, 0)
end


game:GetService("RunService").heartbeat:Connect(function()
    if getgenv().Desync == true then
    local abc = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = getgenv().Direction * (2^16)
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = abc
    end
end)
