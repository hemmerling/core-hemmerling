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

local Accu = 0	
local Argument = 0

function Calculate(Value)
	if Value == "CLR" then Clear()
	elseif Value == "=" then Equals()
	elseif Value == "+" then Add()
	elseif Value == "-" then Subtract()
	elseif Value == "*" then Multiply()
	elseif Value == "/" then Divide()
	else                     Argument = Value
	end
	print("The accu is now " .. Accu)
end

function Add()
    Accu = Accu + Argument
	print("The accu is now " .. Accu)
end

function Subtract()
    Accu = Accu - Argument
	print("The accu is now " .. Accu)
end

function Multiply()
    Accu = Accu * Argument
	print("The accu is now " .. Accu)
end

function Divide()
    if Value == 0
	then
	    Accu = 65535
	else
		Accu = Accu / Argument
	end
	print("The accu is now " .. Accu)
end

function Clear()
	print("The accu is now " .. Accu)
end

function Equals()
	print("The accu is now " .. Accu)
end

function Result()
	print("The accu is now " .. Accu)
	return accu
end


print("-----CalculateScript has just executed!")

return {
	Calculate = Calculate,
	Add = Add,
	Subtract = Subtract,
	Multiply = Multiply,
	Divide = Divide,
	Clear = Clear,
	Equals = Equals,
	Result = Result,
}