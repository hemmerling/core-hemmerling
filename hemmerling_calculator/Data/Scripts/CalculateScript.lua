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

local Operand1 = 0	
local Operand2 = 0
local Operator = nil

OPERATOR = {
    EQ = "=",
	CLR = "CLR",
	ADD = "+",
	SUB = "-",
	MUL = "*",
	DIV = "/",
}

local State = 0
-- 0 - Waiting for Operand1 or Operator
-- 1 - Waiting for Operator
-- 2 - Waiting for Operand2 and process operation. If no Operand2, ignore
-- 3 - Waiting for Operator or Equals
-- 4 - Error

-- Waiting for Operand1 or Operator
function State0(Value)
	local Result = Operand1
	-- If you press an Operator key without prior Operand, current Operand1 is saved 
	if Value == OPERATOR.EQ then 
		Operator = nil
		State = 0
	elseif Value == OPERATOR.CLR then 
		Operator = nil
		State = 0
		Operand1 = 0
		Operand2 = 0
		Result = 0
	elseif Value == OPERATOR.ADD then 
		Operator = Value
		State = 2
	elseif Value == OPERATOR.SUB then 
		Operator = Value
		State = 2
	elseif Value == OPERATOR.MUL then 
		Operator = Value
		State = 2
	elseif Value == OPERATOR.DIV then 
		Operator = Value
		State = 2
	else 
		Operand1 = Value
		Result = Value
		State = 1
	end
	return(Result)
end

-- Waiting for Operator
function State1(Value)
	local Result = Operand1
	if Value == OPERATOR.EQ then 
		Operator = nil
		State = 0
	elseif Value == OPERATOR.CLR then 
		Operator = nil
		State = 0
	elseif Value == OPERATOR.ADD then 
		Operator = Value
		State = 2
	elseif Value == OPERATOR.SUB then 
		Operator = Value
		State = 2
	elseif Value == OPERATOR.MUL then 
		Operator = Value
		State = 2
	elseif Value == OPERATOR.DIV then 
		Operator = Value
		State = 2
	else
		-- ignore all numerical input
	end
	return(Result)
end

-- Waiting for Operand2. If no Operand2, ignore
function State2(Value)
	local Result = Operand1
	-- If you press an Operator key without prior Operand, current Operand1 is saved 
	if Value == OPERATOR.EQ then 
		Operator = nil
		State = 0
	elseif Value == OPERATOR.CLR then 
		Operator = nil
		State = 0
	elseif Value == OPERATOR.ADD then 
		Operator = Value
		State = 2
	elseif Value == OPERATOR.SUB then 
		Operator = Value
		State = 2
	elseif Value == OPERATOR.MUL then 
		Operator = Value
		State = 2
	elseif Value == OPERATOR.DIV then 
		Operator = Value
		State = 2
	else 
		Operand2 = Value
		Result = Value
		State = 3
	end
	return(Result)
end

-- Subfunction of State3() to process the Operator
function State31()
	local Result = nil
	if Operator == OPERATOR.ADD then 
		Result = Add()
	elseif Operator == OPERATOR.SUB then 
		Result = Subtract()
	elseif Operator == OPERATOR.MUL then 
		Result = Multiply()
	elseif Operator == OPERATOR.DIV then 
		Result = Divide()
	else
	end
	return(Result)
end  

-- Waiting for Operator or Equals and process the first operation.
function State3(Value)
	local Result = nil
	if Value == OPERATOR.EQ then
		Result = State31()
		Operator = nil
		State = 0
	elseif Value == OPERATOR.CLR then
		Result = 0
		Operator = nil
		State = 0
	else
		Result = State31()
		Operator = Value
		State = 2
	end
	return(Result)
end

-- 4 - ErrorState. Can just be cleaned by pressing "CLR" button
function State4(Value)
	if Value == OPERATOR.CLR then 
		Operator = nil
		State = 0
		Operand1 = 0
		Operand2 = 0
	end
end

function Add()
    Operand1 = Operand1 + Operand2
	Operator = nil
	return( Operand1 )
end

function Subtract()
    Operand1 = Operand1 - Operand2
	Operator = nil
	return( Operand1 )
end

function Multiply()
    Operand1 = Operand1 * Operand2
	Operator = nil
	return( Operand1 )
end

function Divide()
    if Operand2 == 0
	then
	    Accu = 65535
	else
		Operand1 = Operand1 / Operand2
	end
	Operator = nil
	return( Operand1 )
end

function Equals()
	Operand1 = 0
	Operand2 = 0
	Operator = nil
	return( Operand1 )
end

function Clear()
	Operand1 = 0
	Operand2 = 0
	Operator = nil
	return( Operand1 )
end

function PrintDebugState(Value)
	print ("State =" .. State)
	print ("Operand1 = " .. Operand1)
	print ("Operand2 = " .. Operand2)
	print ("Operator = ")
	print (Operator)
	print ("Result of Calculation = ")
	print (Value)
end   

-- Global function, is called by the GUI script
function Calculate(Value)
	local Result = Operand1
	if State == 0 then 
		-- 0 - Waiting for Operand1 or Operator
		Result = State0(Value)
	elseif State == 1 then 
		-- 1 - Waiting for Operator
		Result = State1(Value)
	elseif State == 2 then 
		-- 2 - Waiting for Operand2 and process operation. If no Operand2, ignore
		Result = State2(Value)
	elseif State == 3 then 
		-- 3 - Waiting for Operator or Equals
		Result = State3(Value)
	else 
		-- 4 - ErrorState. Can just be cleaned by pressing "CLR" button
		Result = State4(Value)
	end
	PrintDebugState(Result)
   return ( Result )
end

-- print("CalculateScript processed")

return {
	State0 = State0,
	State1 = State1,
	State2 = State2,
	State3 = State3,
	State31 = State31,
	State4 = State4,
	Add = Add,
	Subtract = Subtract,
	Multiply = Multiply,
	Divide = Divide,
	Clear = Clear,
	Equals = Equals,
	PrintDebugState = PrintDebugState,
	Calculate = Calculate,
}
