local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SourcexCode/D3V1LS-Source/main/UI.lua"))()
local Window = Library:Create("D3V1LS", "Made by F4ir")


local Tab1 = Window:Tab("Aim-Lock", false)

Tab1:Label("Aim-lock")

Tab1:Button("Aim-Lock (NEW GUI)", function(bool)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SourcexCode/D3V1LS-Source/main/Script/AddOns/Aim-Lock/Aim-Lock.lua"))()
end)


local Tab2 = Window:Tab("Player",false)

Tab2:Label("Player Scripts")

game.StarterGui:SetCore("SendNotification", {
    Title = "D3V1LS";
    Text = "Made by F4ir";
    Icon = "rbxassetid://17388673657";
    Duration = "5";
    callbakc = bindableFunction;
    Button1 = "Okay";
})

Tab2:Button("FLY (X)",function(bool)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SourcexCode/D3V1LS-Source/main/Script/AddOns/Fly%20(X)/Fly%20(X).lua"))()
end)

Tab2:Button("No Jump-Cooldown", function(bool)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SourcexCode/D3V1LS-Source/main/Script/AddOns/No%20Jump-Cooldown/No%20Jump-Cooldown.lua"))()
end)

Tab2:Slider("Fov Camera",70,120,function(text)
    workspace.CurrentCamera.FieldOfView = (text)
end)



local Tab3 = Window:Tab("CFrames", false)

Tab3:Label("CFrames")

Tab3:Textbox("CFrame (use 1 to 10)", "Speed", function(a)
    getgenv().Multiplier = a
end, {
    ["clear"] = false,
})

Tab3:Button("Activate CFrames (Z)", function(bool)
    local userInput = game:GetService('UserInputService')
    local runService = game:GetService('RunService')
    local Enabled = false
    
    userInput.InputBegan:Connect(function(Key)
        if Key.KeyCode == Enum.KeyCode.Z then
            Enabled = not Enabled
            if Enabled == true then
                repeat
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().Multiplier
                    runService.Stepped:Wait()
                until Enabled == false
            end
        end
    end)
end)



local Tab4 = Window:Tab("viewer/Anti", false)

Tab4:Label("Anti-Lock M to Activate")

Tab4:Button("Activate Anti-Lock", function(bool)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SourcexCode/D3V1LS-Source/main/Script/AddOns/Viewer%26Anti/Anti-Lock.lua"))()
end)

Tab4:Label("Toggle ON/OFF with P")
Tab4:Label("Switch player with T")

Tab4:Button("Activate Aim-Viewer", function(bool)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SourcexCode/D3V1LS-Source/main/Script/AddOns/Viewer%26Anti/Aim-Viewer.lua"))()
end)



local Tab5 = Window:Tab("Fun Stuff", false)

Tab5:Label("Fun Stuff")

Tab5:Button("Show Chat Logs", function(bool)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SourcexCode/D3V1LS-Source/main/Script/AddOns/Chat%20Logs/Chat%20Logs.lua"))()
end)

Tab5:Button("Trash Talk (J)",function(bool)
    local plr = game.Players.LocalPlayer
repeat wait() until plr.Character
local char = plr.Character

local garbage = {
    "ur bad";
    "sonney boy";
    "ez";
    "my grandma has more skill than you";
    "seed";
    "sit son";
    "trash";
    "LOL";
    "F4ir ON TOP";
    "imagine being you right now";
    "xd";
    "don't try LOL";
    "you lose";
    "why do you even try";
    "I didn't think being this bad was possible";
    "leave";
    "no skill";
    "so sad man.";
    "bad";
    "you're nothing";
    "lol";
    "so trash";
    "so bad";
    "ur salty";
    "salty";
    "look he's mad";
    "cry more";
    "keep crying";
    "cry baby";
    "hahaha I won";
    "no one likes u";
    "run 1s seed";
    "thank you for your time";
    "you were so close!";
    "better luck next time!";
    "D3V1LS RUNS YOU";
    "HAHA";
    "ill 5-0";
    "just quit";
    "time to take out the trash";
    "did you get worse?";
    "I'm surprised you haven't quit yet";

}

function TrashTalk(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.J and gameProcessedEvent == false then        
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
        garbage[math.random(1,#garbage)],
        "All"
    )
    end
end

game:GetService("UserInputService").InputBegan:connect(TrashTalk)
end)


Tab5:Button("C To TP", function(bool)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SourcexCode/D3V1LS-Source/main/Script/AddOns/C%20To%20TP/C%20To%20TP.lua"))()
end)



local Tab6 = Window:Tab("Premium",false)

Tab6:Label("Discord In Credits")

Tab6:Button("Premium GUI", function(bool)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PremiumxWhitelist/Whitelisting/main/Whitelist/Whitelist-Premium-Gui.lua"))()
end)



local Tab7 = Window:Tab("Settings",false)

Tab7:Label("GUI Keybind")

Tab7:Keybind("Toggle",Enum.KeyCode.RightShift,function()
    Library:Toggle()
end)



local Tab8 = Window:Tab("Credits", false)

Tab8:Label("Credits")

Tab8:Button("Makers Discord: f4ir")
Tab8:Button("Makers Discord: emperor_0x")
Tab8:Button("Server: discord.gg/TxXMGF93Qq")
