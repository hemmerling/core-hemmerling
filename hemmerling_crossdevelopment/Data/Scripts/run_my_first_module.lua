-- ** Start of modification for Lua@CORE **
local myfirstmodule = nil
if (CoreObject) then
    local propMyFirstModule = script:GetCustomProperty("my_first_module")
    myfirstmodule = require(propMyFirstModule)
else
    myfirstmodule = require("my_first_module")
end
-- ** End of modification for Lua@CORE **
myfirstmodule.foo()
