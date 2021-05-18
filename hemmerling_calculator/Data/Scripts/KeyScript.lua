-- require()
local propCalculateScript = script:GetCustomProperty("CalculateScript")
local reqScript = require(propCalculateScript)

-- custom properies
local propTextDisplay = script:GetCustomProperty("TextDisplay"):WaitForObject()
local propValue = script.parent:GetCustomProperty("Value")

local trigger = script.parent
local Key = script:GetCustomProperty("Key"):WaitForObject()

-- code starts here

Key:SetColor(Color.WHITE) 

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
		local TextDisplay = reqScript.Calculate(propValue)
		print(propTextDisplay.text)
		propTextDisplay.text = tostring(TextDisplay)
		Task.Wait(2)
		Key:SetColor(Color.WHITE)				
		UI.PrintToScreen("Interacted!")
	end
end

trigger.parent.beginOverlapEvent:Connect(OnBeginOverlap)
trigger.parent.endOverlapEvent:Connect(OnEndOverlap)
trigger.parent.interactedEvent:Connect(OnInteracted)
