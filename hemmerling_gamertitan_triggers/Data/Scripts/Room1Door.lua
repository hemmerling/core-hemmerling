local trigger = script:GetCustomProperty("Trigger"):WaitForObject()
local Door01 = script:GetCustomProperty("WhiteboxDoor01"):WaitForObject()
local DoorRot = Door01:GetWorldRotation()
local DoorOpen = false


function OnInteracted(whichTrigger, other)
	if other:IsA("Player") then
		UI.PrintToScreen(trigger.name .. " turned by " .. other.name, Color.GREEN)
		if DoorOpen == false then
		DoorRot.z = DoorRot.z - 90
		Door01:RotateTo(Rotation.New(DoorRot), 1) 
		DoorOpen = not DoorOpen
		trigger.interactionLabel = "Close Door"
		else
		DoorRot.z = DoorRot.z + 90
		Door01:RotateTo(Rotation.New(DoorRot), 1)
		DoorOpen = not DoorOpen
		trigger.interactionLabel = "Open Door"
		end
	end
end

trigger.interactedEvent:Connect(OnInteracted)
