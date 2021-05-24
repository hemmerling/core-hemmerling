local Button = script:GetCustomProperty("Button"):WaitForObject()

Button.visibility = Visibility.FORCE_ON
UI.SetCursorVisible(true)
-- UI.SetCanCursorInteractWithUI(true)

function OnClicked(whichButton)
	print("button clicked: " .. whichButton.name)
end

function OnBindingPressed(whichPlayer, binding)
	print("player " .. whichPlayer.name .. " pressed binding: " .. binding)
	if (binding == "ability_primary") then
            print("Left MouseButton pressed") 
    end
end

function OnBindingReleased(whichPlayer, binding)
	print("player " .. whichPlayer.name .. " released binding: " .. binding)
	if (binding == "ability_primary") then
        print("Left MouseButton released") 
    end
end

function OnPlayerJoined(player)
	-- hook up binding in player joined event here, move to more appropriate place if needed
	player.bindingPressedEvent:Connect(OnBindingPressed)
	player.bindingReleasedEvent:Connect(OnBindingReleased)
    Button.clickedEvent:Connect(OnClicked)
end

-- on player joined/left functions need to be defined before calling event:Connect()
Game.playerJoinedEvent:Connect(OnPlayerJoined)