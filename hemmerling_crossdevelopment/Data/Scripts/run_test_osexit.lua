-- os.exit() Test
-- Some LUA debuggers need a launch.json file, with 
-- "path": "${env:LUA_PATH}"
function test()
    print ("test()")
    return(0)
end
print ("os.exit() Test")
print(package.path)
if (CoreObject) then
    test()
else
    local result = test()
    --os.exit(result)
    print("after os.exit()")
end
