local button = script.parent

print(button:GetButtonColor())
print(button:GetHoveredColor())
print(button:GetPressedColor())
print(button:GetDisabledColor())

function OnClicked(whichButton)
	print("button clicked: " .. whichButton.name)
end

function OnHovered(whichButton)
	print("button onHovered: " .. whichButton.name)
end

function OnUnhovered(whichButton)
	print("button unhovered: " .. whichButton.name)
end

button.clickedEvent:Connect(OnClicked)
button.hoveredEvent:Connect(OnHovered)
button.unhoveredEvent:Connect(OnUnhovered)
