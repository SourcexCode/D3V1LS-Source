local admins = {
 -- Da Fights
 2798264801, -- InfamousCursed
 2918549182, -- renxw4ree
 326049911, -- FaceStomping
 3552512240, -- swpwsz
 3483722456, -- lovetapee
 4151967307, -- rrghosty
 3284008281, -- H1ldrrrr
 1086246, -- Euto
 3993530710, -- UN88460919
 1893238462, -- its_bonbon003
 1321810603, -- Dorianooff
 1853331721, -- ry4ngetsmoney
 226601965, -- MythicalRy4n
 5067936490, -- 21shotsz
 1136055020, -- foreverburied

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
