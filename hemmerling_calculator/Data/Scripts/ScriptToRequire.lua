--[[ This is the script that the other scripts will require.
Once it is required, it will execute ONCE.  Future requires()
will just return the result of the first execution.

Usually it returns a table of functions and/or values.

It's a good way to share functions!  Also since it only has
one "instance" it's a good place to have things like global
counters, etc, that lots of code feeds into!

Note that this script is never actually placed in the hierarchy -
scripts that use it pull it straight out of project content!

]]

function Greetings()
	print("Hello world!")
end


local counter = 0
function IncrementCounter()
	counter = counter + 1
	print("The counter is now " .. counter)
end

print("-----ScriptToRequire has just executed!")


return {
	Greetings = Greetings,
	IncrementCounter = IncrementCounter,
}