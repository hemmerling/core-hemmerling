local trigger = script:GetCustomProperty("trigger"):WaitForObject()
local geometry = script:GetCustomProperty("geometry"):WaitForObject()
local rotation = script:GetCustomProperty("rotation")

local SFX = nil
if script:GetCustomProperty("SFX") then
    SFX = script:GetCustomProperty("SFX"):WaitForObject()
end

local VFX = nil
if script:GetCustomProperty("VFX") then
    SFX = script:GetCustomProperty("VFX"):WaitForObject()
end

local score = 0
local scoreToAdd = 1

if rotation then
    geometry:RotateContinuous(rotation)
 end
 
function printToScreen()
    print("Test")
    trigger.collision = Collision.FORCE_OFF
    geometry.visibility = Visibility.FORCE_OFF
end

function addScore()
    score = score + 1
 
    if score == 3 then
        print ("Player won")
    elseif score == 2 then
        print ("Almost there")
    else 
        print ("No requirements")
    end
        
    print(score)
end

function updateScore()
    Events.Broadcast("AddScoreToPlayer", scoreToAdd)
    if SFX then
        SFX:Play()
    end
    if VFX then
        VFX:Play()
    end
    trigger.collision = Collision.FORCE_OFF
    geometry.visibility = Visibility.FORCE_OFF
end


-- trigger.beginOverlapEvent:Connect(printToScreen)
-- trigger.beginOverlapEvent:Connect(addScore)
trigger.beginOverlapEvent:Connect(updateScore)
