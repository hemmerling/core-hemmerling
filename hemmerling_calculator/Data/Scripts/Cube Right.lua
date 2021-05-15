local trigger = script.parent
local CubeRIGHT = script:GetCustomProperty("CubeRIGHT"):WaitForObject()
local RightPos = CubeRIGHT:GetPosition()
CubeRIGHT:RotateContinuous(Rotation.New(0, 0, -70))


function OnBeginOverlap(trigger, other)
	if other:IsA("Player") then
		CubeRIGHT:RotateContinuous(Rotation.New(0, 0, 0))
	end
end

function OnEndOverlap(trigger, other)
	if other:IsA("Player") then
		CubeRIGHT:RotateContinuous(Rotation.New(0, 0, -70))
	end
end

function OnInteracted(trigger, other)
	if other:IsA("Player") then
		RightPos.z = RightPos.z - 10
		CubeRIGHT:MoveTo(Vector3.New(RightPos), 1)
		UI.PrintToScreen("Moving Down!")
	end
end

trigger.beginOverlapEvent:Connect(OnBeginOverlap)
trigger.endOverlapEvent:Connect(OnEndOverlap)
trigger.interactedEvent:Connect(OnInteracted)