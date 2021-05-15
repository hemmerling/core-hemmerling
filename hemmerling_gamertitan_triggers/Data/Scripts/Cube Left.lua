local trigger = script.parent
local CubeLEFT = script:GetCustomProperty("CubeLEFT"):WaitForObject()
local LeftPos = CubeLEFT:GetPosition()

function OnBeginOverlap(trigger, other)
	if other:IsA("Player") then
		CubeLEFT:RotateContinuous(Rotation.New(0, 0, 100))
	end
end

function OnEndOverlap(trigger, other)
	if other:IsA("Player") then
		CubeLEFT:RotateContinuous(Rotation.New(0, 0, 0))
	end
end

function OnInteracted(trigger, other)
	if other:IsA("Player") then
		LeftPos.z = LeftPos.z + 10
		CubeLEFT:MoveTo(Vector3.New(LeftPos), 1)
		UI.PrintToScreen("Moving Up!")
	end
end

trigger.beginOverlapEvent:Connect(OnBeginOverlap)
trigger.endOverlapEvent:Connect(OnEndOverlap)
trigger.interactedEvent:Connect(OnInteracted)
