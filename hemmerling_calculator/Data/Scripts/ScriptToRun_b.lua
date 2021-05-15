local propScriptToRequire = script:GetCustomProperty("ScriptToRequire")
local reqScript = require(propScriptToRequire)

print("script b:")
print("----------------")
reqScript.IncrementCounter()
reqScript.IncrementCounter()
reqScript.IncrementCounter()