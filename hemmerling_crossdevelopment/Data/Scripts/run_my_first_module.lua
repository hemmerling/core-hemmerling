-- ** Start of modification for Lua@CORE **
local myfirstmodule = nil
print(package.path)
if (CoreObject) then
    local propMyFirstModule = script:GetCustomProperty("my_first_module")
    myfirstmodule = require(propMyFirstModule)
else
    if (package.config:sub(1,1) == "\\")
    then 
        -- Just if this script is executed on VisualStudioCode on Windows.
        ---The name of the local Windows user of this code 
        --- is hard-coded in the file path  :-(: "Administrator"
        -- package.path = package.path .. ";C:\\Users\\Administrator\\AppData\\Roaming\\luarocks\\share\\lua\\5.3\\?.lua"
        print(package.path)
    end
    myfirstmodule = require("my_first_module")
    require("luaunit")
end
-- ** End of modification for Lua@CORE **
myfirstmodule.foo()
