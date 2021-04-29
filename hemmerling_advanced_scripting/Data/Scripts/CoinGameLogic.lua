-- Get the folder containing all the coin objects
local coinFolder = World.FindObjectByName("Coins")

-- Every second check for how many coins are left in the scene
function Tick2()
    Task.Wait(1)
    local coinsLeft = #coinFolder:GetChildren()
    if coinsLeft == 0 then
        World.FindObjectByName("Game Settings"):SetNetworkedCustomProperty("gameOver", true)
    end
end

-- Check the number of enabled coins
-- If the game should end, send a message through the Game Settings
-- Cue a new round to start
-- Reset the coins and UI

function Tick()
    Task.Wait(1)
    local coinsLeft = GetCoinsLeft()
    if coinsLeft == 0 then
        World.FindObjectByName("Game Settings"):SetNetworkedCustomProperty("gameOver", true)
        Task.Wait(3)
        World.FindObjectByName("Game Settings"):SetNetworkedCustomProperty("gameOver", false)
        ResetMap()
    end
end

function ResetMap()
    -- Set all coins to be enabled
    for _, coin in pairs(coinFolder:GetChildren()) do
        if coin ~= nil then
            coin.isEnabled = true
        end
    end

    -- Reset resources for every player
    local players = Game.GetPlayers()
    for _, player in pairs(players) do
        player:SetResource("Manticoin", 0)
    end
end

-- Get the amount of coins that are enabled in the scene
function GetCoinsLeft()
    local count = 0
    for _, coin in pairs(coinFolder:GetChildren()) do
        if coin ~= nil and coin.isEnabled then
            count = count + 1
        end
    end
    return count
end

