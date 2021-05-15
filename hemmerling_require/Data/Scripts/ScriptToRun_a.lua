local propScriptToRequire = script:GetCustomProperty("ScriptToRequire")
local reqScript = require(propScriptToRequire)

print("script a:")
print("----------------")
reqScript.Greetings()
reqScript.IncrementCounter()
reqScript.IncrementCounter()