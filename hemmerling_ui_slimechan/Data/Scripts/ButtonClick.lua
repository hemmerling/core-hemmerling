local Button = script:GetCustomProperty("Button"):WaitForObject()
-- local Button = script.parent

local CtrlPressed = false
 
function OnClicked(whichButton)
	print("button clicked: " .. whichButton.name)
end

-- Keyboard key "left ctrl"
function OnBindingPressed(whichPlayer, binding)
	print("player " .. whichPlayer.name .. " pressed binding: " .. binding)
	if (binding == "ability_primary") then
            print("Left MouseButton pressed") 
    end
    if (binding == "ability_extra_10") then 
        if ( not CtrlPressed ) then
            Button.visibility = Visibility.FORCE_ON
            UI.SetCursorVisible(true)
        else
            Button.visibility = Visibility.FORCE_OFF
            UI.SetCursorVisible(false)
        end
	end
end

function OnBindingReleased(whichPlayer, binding)
	print("player " .. whichPlayer.name .. " released binding: " .. binding)
	if (binding == "ability_primary") then
        print("Left MouseButton released") 
    end
    if (binding == "ability_extra_10") then 
        --
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