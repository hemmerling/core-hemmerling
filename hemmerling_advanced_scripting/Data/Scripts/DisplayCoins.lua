-- Print out 'Player name: {coin count}' every 2 seconds
function Tick()
    Task.Wait(2)
    local players = Game.GetPlayers()
    local numPlayers = #players
    for i = 1, numPlayers do
        local numCoins = players[i]:GetResource("Manticoin")
        UI.PrintToScreen(players[i].name..": "..tostring(numCoins or 0))
    end
end

-- Display the player's coin amount

Task.Wait()  -- Wait a tick for players to connect
local player = Game.GetLocalPlayer()

-- Every 0.1 seconds update the coin count display
function Tick()
    Task.Wait(0.1)
    local score = player:GetResource("Manticoin")
    local displayString = player.name..": "..tostring(score)
    script.parent.text = displayString
end
