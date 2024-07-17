local admins = {
 -- Da Fights
 2798264801, -- InfamousCursed
 2918549182, -- renxw4ree
 326049911, -- FaceStomping

}

for l, c in pairs(game.Players:GetChildren()) do
for i, v in pairs(admins) do
if c.UserId == v then
local Vanis = game.Players.LocalPlayer
Vanis:Kick("Admin Detected!")
end
end
end
game.Players.PlayerAdded:Connect(function(plr)
for i, v in pairs(admins) do
if plr.UserId == v then
local Vanis = game.Players.LocalPlayer
Vanis:Kick("Admin Detected!")
end
end
end)
