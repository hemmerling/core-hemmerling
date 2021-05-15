local propCalculateScript = script:GetCustomProperty("CalculateScript")
local reqScript = require(propCalculateScript)

print("Add")
print("----------------")
reqScript.Add()
