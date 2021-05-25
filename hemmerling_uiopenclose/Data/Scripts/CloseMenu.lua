local button = script.parent
local Menu = script:GetCustomProperty("menu"):WaitForObject()

function OnClicked(whichButton)
	print("button clicked: " .. whichButton.name)
    Menu.isEnabled = false
    UI.SetCursorVisible(false)
    UI.SetCanCursorInteractWithUI(false)
end

function OnPlayerJoined(player)
	-- hook up binding in player joined event here, move to more appropriate place if needed
    button.clickedEvent:Connect(OnClicked)
end

-- on player joined/left functions need to be defined before calling event:Connect()
Game.playerJoinedEvent:Connect(OnPlayerJoined)