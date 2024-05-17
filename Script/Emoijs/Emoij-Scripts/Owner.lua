local userIDToMatch = {
    [2520431055] = "xF4ir",
    [871092912] = "Mrpupbro",
    [1518237801] = "robinbackup7"
}

local emojiCombo = "[\u{1F451}\u{1F608}]" -- Unicode representation of emojis (👑 and 😈) followed by a space

-- Function to apply the emojis and display name
local function applyEmojisAndName(player)
    if player.Character and player.Character.Parent.Name == 'Players' then
        local humanoid = player.Character:FindFirstChildWhichIsA('Humanoid')
        if humanoid then
            local displayName = player.DisplayName
            if userIDToMatch[player.UserId] then
                displayName = displayName .. ""
            end
            humanoid.DisplayName = emojiCombo .. displayName
        end
    end
end

-- Function to check for players with the specified user ID and apply emojis and name
local function checkPlayers()
    for _, player in pairs(game:GetService('Players'):GetPlayers()) do
        if userIDToMatch[player.UserId] then
            applyEmojisAndName(player)
        end
    end
end

-- Connect the function to check for players when a player joins
game:GetService('Players').PlayerAdded:Connect(function(player)
    if userIDToMatch[player.UserId] then
        applyEmojisAndName(player)
    end
end)

-- Check for existing players with the specified user ID
checkPlayers()

-- Connect the function to check for players periodically
while true do
    for _, player in pairs(game:GetService('Players'):GetPlayers()) do
        if userIDToMatch[player.UserId] then
            applyEmojisAndName(player)
        end
    end
    wait(1) -- Adjust the interval as needed
end
