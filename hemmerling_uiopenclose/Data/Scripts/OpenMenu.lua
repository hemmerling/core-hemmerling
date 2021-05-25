local Menu = script:GetCustomProperty("menu"):WaitForObject()

function OnBindingPressed(whichPlayer, binding)
	print("player " .. whichPlayer.name .. " pressed binding: " .. binding)
	if (binding == "ability_extra_22") then 
        Menu.isEnabled = true
        UI.SetCursorVisible(true)
        UI.SetCanCursorInteractWithUI(true)
	end
end

function OnPlayerJoined(player)
	-- hook up binding in player joined event here, move to more appropriate place if needed
	player.bindingPressedEvent:Connect(OnBindingPressed)
end

-- on player joined/left functions need to be defined before calling event:Connect()
Game.playerJoinedEvent:Connect(OnPlayerJoined)
