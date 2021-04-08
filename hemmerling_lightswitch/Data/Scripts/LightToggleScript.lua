local propLightTemplate = script:GetCustomProperty("LightTemplate")

local bulb = World.FindObjectByName("Bulb")
local bulbPosition = bulb:GetWorldPosition()

local switch = script.parent
local switchTrigger = switch:FindChildByName("Trigger")
print(switchTrigger)

local onRotation = Rotation.New(0, -120, 0)
local offRotation = Rotation.New(0, -30, 0)

local lightIsOn = false
local spawnedLight = nil

-- switch:RotateTo(onRotation, 2, true)

-- Update light switch's label
local function UpdateLabel()
    if lightIsOn == false then
        switchTrigger.interactionLabel = "Turn On"
    else
        switchTrigger.interactionLabel = "Turn Off"
    end
end

-- Function to rotate the switch
-- and spawn the light
local function OnSwitchInteraction()
    if not lightIsOn then
        switch:RotateTo(onRotation, 0.5, true)
        -- switch:RotateTo(onRotation, 2, true)
        -- switch:RotateTo(Rotation.New(0, -120, 0), .5, true)
        -- World.SpawnAsset(propLightTemplate)
        spawnedLight = World.SpawnAsset(propLightTemplate, {position = bulbPosition})
    else
        switch:RotateTo(offRotation, 0.5, true)
        -- switch:RotateTo(offRotation, 2, true)
        -- switch:RotateTo(Rotation.New(0, -30, 0), 0.5, true)
        spawnedLight:Destroy()
    end
    -- Track whether light is on or off
    lightIsOn = not lightIsOn
    print(lightIsOn)
    UpdateLabel()
end

-- Connect the function to the trigger event
switchTrigger.interactedEvent:Connect(OnSwitchInteraction)
