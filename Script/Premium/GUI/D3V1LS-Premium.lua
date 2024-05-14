game.StarterGui:SetCore("SendNotification",  {
 Title = "You're Whitelisted.";
 Text = "Made by F4ir";
 Icon = "rbxassetid://17388673657";
 Duration = 10;
 Button1 = "Thank You For Buying!";
 Callback = NotificationBindable;
}
)
local UILibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/SourcexCode/D3V1LS-Source/main/UI-Premium.lua"))()

local MainUI = UILibrary.Load("D3V1LS Premium")
local AimingPage = MainUI.AddPage("Aiming")
local CombatPage = MainUI.AddPage("Combat")
local FunPage = MainUI.AddPage("Fun Stuff")

local FirstLabel = AimingPage.AddLabel("ResolerKeys: LeftAlt For Desync | RightControl For Underground.")





-- AIMING
local FirstButton = AimingPage.AddButton("Cam-Lock With Resolver (Q)", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/SourcexCode/D3V1LS-Source/main/Script/AddOns/Aim-Lock-With-Resolver/Resolver-Aim-Lock%20(Q).lua",true))()
end)
local FirstButton = AimingPage.AddButton("Cam-Lock With Resolver (C)", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/SourcexCode/D3V1LS-Source/main/Script/AddOns/Aim-Lock-With-Resolver/Resolver-Aim-Lock%20(C).lua",true))()
end)





-- COMBAT
local FifthButton = CombatPage.AddButton("Free-Fist [T]", function()
	local sound = Instance.new("Sound")
	sound.SoundId = "rbxassetid://413861777"
	sound.Parent = game:GetService("SoundService")
	sound:Play()

	wait()
	game.StarterGui:SetCore("SendNotification", {
		Title = "D3V1LS"; -- the title (ofc)
		Text = "Press T to stop"; -- what the text says (ofc)
		Duration = 5; -- how long the notification should in secounds
	})
	local localPlayer       = game:GetService("Players").LocalPlayer;
	local localCharacter    = localPlayer.Character
	local Mouse             = localPlayer:GetMouse();
	local FistControl       = false
	local LeftFist          = localCharacter.LeftHand;
	local RightFist         = localCharacter.RightHand;

	-- // Services
	local uis = game:GetService("UserInputService");

	-- // Coroutine Loop + Functions
	local loopFunction = function()
		LeftFist.CFrame  = CFrame.new(Mouse.Hit.p);
		RightFist.CFrame = CFrame.new(Mouse.Hit.p);
	end;

	local Loop

	local Start = function()
		Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
	end;

	local Pause = function()
		Loop:Disconnect()
	end;

	-- // Hotkeys
	uis.InputBegan:connect(function(Key)
		if (Key.KeyCode == Enum.KeyCode.T) then
			if (FistControl == false) then
				FistControl = true;
				Start();
				pcall(function()
					localCharacter.RightHand.RightWrist:Remove();
					localCharacter.LeftHand.LeftWrist:Remove();
				end);
			elseif (FistControl == true) then
				FistControl = false;
				Pause();
				local rightwrist  = Instance.new("Motor6D");
				rightwrist.Name   = "RightWrist";
				rightwrist.Parent = localCharacter.RightHand;
				rightwrist.C0     = CFrame.new(1.18422506e-07, -0.5009287, -6.81715525e-18, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				rightwrist.C1     = CFrame.new(3.55267503e-07, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				rightwrist.Part0  = localCharacter.RightLowerArm;
				rightwrist.Part1  = localCharacter.RightHand;

				local leftwrist   = Instance.new("Motor6D");
				leftwrist.Name    = "LeftWrist";
				leftwrist.Parent  = localCharacter.LeftHand;
				leftwrist.C0      = CFrame.new(0.000475466368, -0.5009287, 7.59417072e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				leftwrist.C1      = CFrame.new(0.000475821638, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				leftwrist.Part0   = localCharacter.LeftLowerArm;
				leftwrist.Part1   = localCharacter.LeftHand;
			end;
		end;
	end);
end)

local FirstButton = CombatPage.AddButton("No-Recoil (breaks the Cam-Lock)", function()
		local player = game.Players.LocalPlayer
		for i,v in pairs(game:GetService('Workspace'):GetChildren()) do
			if v:IsA('Camera') then
				v:Destroy()
			end
		end
		local newcam = Instance.new('Camera')
		newcam.Parent = game:GetService('Workspace')
		newcam.Name = 'Camera'
		newcam.CameraType = 'Custom'
		newcam.CameraSubject = player.Character:FindFirstChildWhichIsA('Humanoid')
		newcam.HeadLocked = true
		newcam.HeadScale = 1 
end)





-- FUN STUFF
local FirstButton = FunPage.AddButton("Hearing Powers", function()
        function Hearing()
            function sandbox(var,func)
                local env = getfenv(func)
                local newenv = setmetatable({},{
                    __index = function(self,k)
                        if k=="script" then
                            return var
                        else
                            return env[k]
                        end
                    end,
                })
                setfenv(func,newenv)
                return func
            end
            cors = {}
            mas = Instance.new("Model",game:GetService("Lighting"))
            Tool0 = Instance.new("Tool")
            LocalScript1 = Instance.new("LocalScript")
            BillboardGui2 = Instance.new("BillboardGui")
            ImageLabel3 = Instance.new("ImageLabel")
            ScreenGui4 = Instance.new("ScreenGui")
            TextLabel5 = Instance.new("TextLabel")
            ScreenGui6 = Instance.new("ScreenGui")
            ImageLabel7 = Instance.new("ImageLabel")
            Tool0.Name = "Hearing"
            Tool0.Parent = mas
            Tool0.CanBeDropped = false
            Tool0.RequiresHandle = false
            LocalScript1.Parent = Tool0
            table.insert(cors,sandbox(LocalScript1,function()
                wait();
                local l__LocalPlayer__1 = game.Players.LocalPlayer;
                while true do
                    wait();
                    if l__LocalPlayer__1.Character then
                        break;
                    end;
                end;
                local l__Character__2 = l__LocalPlayer__1.Character;
                local u1 = false;
                local l__PlayerGui__2 = game.CoreGui;
                function ChatFunc(p1)
                    local v3 = p1.Chatted:connect(function(p2)
                        if u1 then
                            local v4 = BrickColor.Random();
                            local v5 = script.MsgGui:Clone();
                            if string.find(string.lower(p2), "super") then
                                v5.Msg.TextSize = 29;
                            end;
                            v5.Msg.Text = p1.Name .. ": " .. p2;
                            v5.Msg.TextColor3 = v4.Color;
                            v5.Msg.Position = UDim2.new(0.5, math.random(-350, 350), 0.5, math.random(-210, 250));
                            v5.Parent = l__PlayerGui__2;
                            local v6 = script.DotGui:Clone();
                            v6.Dot.ImageColor3 = v4.Color;
                            v6.Enabled = true;
                            if p1.Character then
                                if p1.Character:findFirstChild("Head") then
                                    v6.Parent = p1.Character.Head;
                                end;
                            end;
                            spawn(function()
                                local v7 = 1 - 1;
                                while true do
                                    v6.Size = v6.Size - UDim2.new(0, 1, 0, 1);
                                    game:GetService("RunService").RenderStepped:wait();
                                    if 0 <= 1 then
                                        if v7 < 70 then
        
                                        else
                                            break;
                                        end;
                                    elseif 70 < v7 then
        
                                    else
                                        break;
                                    end;
                                    v7 = v7 + 1;				
                                end;
                            end);
                            game.Debris:AddItem(v5, 3);
                            game.Debris:AddItem(v6, 6);
                        end;
                    end);
                end;
                for v8, v9 in pairs(game.Players:GetChildren()) do
                    ChatFunc(v9);
                end;
                game.Players.PlayerAdded:connect(function(p3)
                    ChatFunc(p3);
                end);
                local u3 = false;
                local u4 = nil;
                script.Parent.Equipped:connect(function(p4)
                    p4.Button1Down:connect(function()
                        if u3 then
                            return;
                        end;
                        u3 = true;
                        if not u1 then
                            u4 = script.Frame:Clone();
                            u4.Parent = l__PlayerGui__2;
                            u1 = true;
                        else
                            u4:Destroy();
                            u1 = false;
                        end;
                        wait(1);
                        u3 = false;
                    end);
                end);
            end))
            BillboardGui2.Name = "DotGui"
            BillboardGui2.Parent = LocalScript1
            BillboardGui2.Enabled = false
            BillboardGui2.Size = UDim2.new(0, 90, 0, 90)
            BillboardGui2.Active = true
            BillboardGui2.ClipsDescendants = true
            BillboardGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            BillboardGui2.AlwaysOnTop = true
            ImageLabel3.Name = "Dot"
            ImageLabel3.Parent = BillboardGui2
            ImageLabel3.Size = UDim2.new(1, 0, 1, 0)
            ImageLabel3.BackgroundColor = BrickColor.new("Institutional white")
            ImageLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
            ImageLabel3.BackgroundTransparency = 1
            ImageLabel3.Image = "rbxassetid://130424513"
            ImageLabel3.ImageColor3 = Color3.new(1, 0, 0)
            ScreenGui4.Name = "MsgGui"
            ScreenGui4.Parent = LocalScript1
            ScreenGui4.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            TextLabel5.Name = "Msg"
            TextLabel5.Parent = ScreenGui4
            TextLabel5.Position = UDim2.new(0, 300, 0, 25)
            TextLabel5.Size = UDim2.new(0, 1, 0, 1)
            TextLabel5.BackgroundColor = BrickColor.new("Institutional white")
            TextLabel5.BackgroundColor3 = Color3.new(1, 1, 1)
            TextLabel5.BackgroundTransparency = 1
            TextLabel5.Font = Enum.Font.SourceSansBold
            TextLabel5.FontSize = Enum.FontSize.Size28
            TextLabel5.Text = ""
            TextLabel5.TextColor = BrickColor.new("Really black")
            TextLabel5.TextColor3 = Color3.new(0, 0, 0)
            TextLabel5.TextSize = 25
            TextLabel5.TextStrokeTransparency = 0.60000002384186
            ScreenGui6.Name = "Frame"
            ScreenGui6.Parent = LocalScript1
            ScreenGui6.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            ImageLabel7.Name = "Image"
            ImageLabel7.Parent = ScreenGui6
            ImageLabel7.Size = UDim2.new(1, 0, 1, 0)
            ImageLabel7.BackgroundColor = BrickColor.new("Institutional white")
            ImageLabel7.BackgroundColor3 = Color3.new(1, 1, 1)
            ImageLabel7.BackgroundTransparency = 1
            ImageLabel7.Image = "rbxassetid://36869195"
            ImageLabel7.ImageColor3 = Color3.new(0.290196, 1, 0.917647)
            ImageLabel7.ImageTransparency = 0.80000001192093
            for i,v in pairs(mas:GetChildren()) do
                v.Parent = game.Players.LocalPlayer.Backpack
                pcall(function() v:MakeJoints() end)
            end
            mas:Destroy()
            for i,v in pairs(cors) do
                spawn(function()
                    pcall(v)
                end)
            end
        end
        game.Players.LocalPlayer.Character:WaitForChild("FULLY_LOADED_CHAR")
        Hearing()
    end
)

local ThirdButton = FunPage.AddButton("Click To Sit", function()
game.Players.LocalPlayer.Character.Humanoid.Sit = true
end)
