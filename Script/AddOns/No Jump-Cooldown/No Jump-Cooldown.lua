local player = game.Players.LocalPlayer
local spacedown = false
local staminup = true

game:GetService('UserInputService').InputBegan:Connect(function(key, b)
    if key.KeyCode == Enum.KeyCode.Space and not b then
        if staminup then
            spacedown = true
            while spacedown do
                wait()
                player.Character:FindFirstChildWhichIsA('Humanoid').JumpPower = 50
                player.Character:FindFirstChildWhichIsA('Humanoid').Jump = true
                player.Character:FindFirstChildWhichIsA('Humanoid').JumpPower = 50
            end
        end
    end
end)

game:GetService('UserInputService').InputEnded:Connect(function(key, b)
    if key.KeyCode == Enum.KeyCode.Space and not b then
        if staminup then
            spacedown = false
        end
    end
end)
