local propCalculateScript = script:GetCustomProperty("CalculateScript")
local reqScript = require(propCalculateScript)

local trigger = script.parent
local Key = script:GetCustomProperty("Key"):WaitForObject()
local RightPos = Key:GetPosition()
print(RightPos)
Key:SetColor(Color.WHITE) 


local Value = script.parent:GetCustomProperty("Value")
print ( "Value =" )
print ( Value )

function OnBeginOverlap(trigger, other)
	if other:IsA("Player") then
		Key:SetColor(Color.GREEN)	
	end
end

function OnEndOverlap(trigger, other)
	if other:IsA("Player") then
		Key:SetColor(Color.WHITE)				
	end
end

function OnInteracted(trigger, other)
	if other:IsA("Player") then
    	Key:SetColor(Color.RED)	
		reqScript.Calculate(Value)
		Task.Wait(2)
		Key:SetColor(Color.WHITE)				
		UI.PrintToScreen("Interacted!")
	end
end

trigger.parent.beginOverlapEvent:Connect(OnBeginOverlap)
trigger.parent.endOverlapEvent:Connect(OnEndOverlap)
trigger.parent.interactedEvent:Connect(OnInteracted)
