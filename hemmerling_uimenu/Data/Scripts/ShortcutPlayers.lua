local Players = script:GetCustomProperty("Players"):WaitForObject()

-- Keyboard key "p"
function OnBindingPressed(whichPlayer, binding)
	print("player " .. whichPlayer.name .. " pressed binding: " .. binding)
	if (binding == "ability_extra_29") then 
        if ( Players.visibility == Visibility.FORCE_OFF ) then
            Players.visibility = Visibility.FORCE_ON
        else
            Players.visibility = Visibility.FORCE_OFF
        end
	end
end

function OnBindingReleased(whichPlayer, binding)
	print("player " .. whichPlayer.name .. " released binding: " .. binding)
	if (binding == "ability_extra_29") then 
        --
	end
end

function OnPlayerJoined(player)
	-- hook up binding in player joined event here, move to more appropriate place if needed
	player.bindingPressedEvent:Connect(OnBindingPressed)
	player.bindingReleasedEvent:Connect(OnBindingReleased)
end

-- on player joined/left functions need to be defined before calling event:Connect()
Game.playerJoinedEvent:Connect(OnPlayerJoined)
