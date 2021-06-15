-- os.exit() Test
function test()
    print ("test()")
    return(0)
end
print ("os.exit() Test")
if (CoreObject) then
    test()
else
    local result = test()
    --os.exit(result)
    print("after os.exit()")
end
