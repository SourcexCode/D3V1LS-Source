    game.StarterGui:SetCore("SendNotification", {
     Title = 'Aimviewer Loaded';
     Text = 'D3V1LS';
     Icon = 'rbxassetid://17388673657';
     Duration = "2";
 })
_G.enable = false
_G.color = Color3.fromRGB(255,0,0)
_G.toggle_keybind = "p"
_G.switch_D3V1LS = 't' 
_G.method = "MousePos"
 
 
 
 
 
local rs = game:GetService("RunService")
local localPlayer = game.Players.LocalPlayer
local mouse = localPlayer:GetMouse()
local target;
 
 
 
function getgun()
 for i,v in pairs(target.Character:GetChildren()) do
     if v and (v:FindFirstChild('Default') or v:FindFirstChild('Handle') )then
         return v
     end
 end
end
 
function sendnotifi(message)
 
 
 game.StarterGui:SetCore("SendNotification", {
     Title =  'Script Info';
     Text = message;
     Icon = 'rbxassetid://17388673657';
     Duration = "2";
 })
 
 end
 
 
function get_closet()
 local a = math.huge
 local b;
 
 
 
 for i, v in pairs(game.Players:GetPlayers()) do
     if v ~= localPlayer and v.Character and v.Character:FindFirstChild("Head") and  v.Character:FindFirstChild("HumanoidRootPart")  then
         local c = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
         local d = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(c.X, c.Y)).Magnitude
 
         if a > d then
             b = v
             a = d
         end
     end
 end
 
 return b
end
 
 
mouse.KeyDown:Connect(function(z)
 if z == _G.toggle_keybind then
     if _G.enable == false then
         _G.enable = true
         sendnotifi("Aim-Viewer Enabled")
     elseif _G.enable == true then
         _G.enable = false 
         sendnotifi("Aim-Viewer Disabled")
     end
 end
end)
 
mouse.KeyDown:Connect(function(z)
 if z == _G.switch_D3V1LS then
     target = get_closet()
     sendnotifi("targeting: "..tostring(target.DisplayName))
 end
end)
 
local a=Instance.new("Beam")a.Segments=1;a.Width0=0.2;a.Width1=0.2;a.Color=ColorSequence.new(_G.color)a.FaceCamera=true;local b=Instance.new("Attachment")local c=Instance.new("Attachment")a.Attachment0=b;a.Attachment1=c;a.Parent=workspace.Terrain;b.Parent=workspace.Terrain;c.Parent=workspace.Terrain
 
task.spawn(function()
 rs.RenderStepped:Connect(function()
 
 local character = localPlayer.Character
     if not character then
     a.Enabled = false
     return
 end
 
 
 
 
 
 
 if _G.enable  and getgun() and target.Character:FindFirstChild("BodyEffects") and target.Character:FindFirstChild("Head")  then
     a.Enabled = true
     b.Position =  target.Character:FindFirstChild("Head").Position
     c.Position = target.Character.BodyEffects[_G.method].Value
 else
     a.Enabled = false
 end
 
 end)
end)
