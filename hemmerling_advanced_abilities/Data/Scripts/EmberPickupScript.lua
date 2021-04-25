local trigger = script.parent

function OnBeginOverlap(whichTrigger, other)
    if other then
        print(whichTrigger.name .. ": Begin Trigger Overlap with " .. other.name)
        other:AddResource("embers",1)
        print("Player has "..tostring(other:GetResource("embers")).." embers.")
        trigger:Destroy()
    end
end

trigger.beginOverlapEvent:Connect(OnBeginOverlap)
