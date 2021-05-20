--[[ This is the script that the other scripts will require.
Once it is required, it will execute ONCE.  Future requires()
will just return the result of the first execution.

Usually it returns a table of functions and/or values.

It's a good way to share functions!  Also since it only has
TWO "instance" it's a good place to have things like global
counters, etc, that lots of code feeds into!

Note that this script is never actually placed in the hierarchy -
scripts that use it pull it straight out of project content!

]]

-- *********
-- Constants
-- *********

-- OPERATOR
-- "attempt to index a nil value (global 'OPERATOR')" => nil can't be an OPERATOR
local OPERATOR = {
	EQ = "=",
	CLR = "CLR",
	ADD = "+",
	SUB = "-",
	MUL = "*",
	DIV = "/",
}

local STATE = {
    ONE = 1, -- Waiting for Operand1 or Operator
	TWO = 2, -- Waiting for Operator
	THREE = 3, -- Waiting for Operand2 and process operation. If no Operand2, ignore
	FOUR = 4, -- Waiting for Operator or Equals
	FIVE = 5, -- Error
}

-- ***************
-- Local variables
-- ***************
local Operand1 = 0	
local Operand2 = 0
local Operator = nil

local State = STATE.ONE

-- Arrays for local functions
local StateFunction = {}
local OperationFunction = {}

local StateTable = {
	-- 1 - Waiting for Operand1 or Operator
	{State = function(Value) return(StateFunction.State1(Value)) end},
    -- 2 - Waiting for Operator
	{State = function(Value) return(StateFunction.State2(Value)) end},
    -- 3 - Waiting for Operand2. If no Operand2, ignore
	{State = function(Value) return(StateFunction.State3(Value)) end},
	-- 4 - Waiting for Operator or Equals and process the first operation.
	{State = function(Value) return(StateFunction.State4(Value)) end},
	-- 5 - ErrorState. Can just be cleaned by pressing "CLR" button
	{State = function(Value) return(StateFunction.State5(Value)) end},
  }

-- ***************
-- Local functions
-- ***************

local State1 = {}
local State123 = {}

function State123.Eq(Value)
	local Result = Operand1
	Operand2 = 0
	Operator = nil
	State = STATE.ONE
	return (Result)
end

function State123.Clr(Value)
	local Result = 0
	Operand1 = 0
	Operand2 = 0
	Operator = nil
	State = STATE.ONE
	return(Result)
end

function State1.AddSubMulDiv(Value)
	local Result = Operand1
	Operator = Value
	State = STATE.THREE	
	return (Result)
end

function State1.Number(Value)
	Operand1 = Value
	Result = Value
	State = STATE.TWO
	return(Result)
end

local State1Table= {}
State1Table["="] = {operator = function(Value) return(State123.Eq(Value)) end}
State1Table["CLR"] = {operator = function(Value) return(State123.Clr(Value)) end}
State1Table["+"] = {operator = function(Value) return(State1.AddSubMulDiv(Value)) end}
State1Table["-"] = {operator = function(Value) return(State1.AddSubMulDiv(Value)) end}
State1Table["*"] = {operator = function(Value) return(State1.AddSubMulDiv(Value)) end}
State1Table["/"] = {operator = function(Value) return(State1.AddSubMulDiv(Value)) end}
State1Table["0"] = {operator = function(Value) return(State1.Number(Value)) end}
State1Table["1"] = {operator = function(Value) return(State1.Number(Value)) end}
State1Table["2"] = {operator = function(Value) return(State1.Number(Value)) end}
State1Table["3"] = {operator = function(Value) return(State1.Number(Value)) end}
State1Table["4"] = {operator = function(Value) return(State1.Number(Value)) end}
State1Table["5"] = {operator = function(Value) return(State1.Number(Value)) end}
State1Table["6"] = {operator = function(Value) return(State1.Number(Value)) end}
State1Table["7"] = {operator = function(Value) return(State1.Number(Value)) end}
State1Table["8"] = {operator = function(Value) return(State1.Number(Value)) end}
State1Table["9"] = {operator = function(Value) return(State1.Number(Value)) end}

-- Waiting for Operand1 or Operator
function StateFunction.State1(Value)
	return (State1Table[Value].operator(Value))
end

--[[ -- Waiting for Operand1 or Operator
function StateFunction.State1(Value)
	local Result = Operand1
	-- If you press an Operator key without prior Operand, current Operand1 is saved 
	if Value == OPERATOR.EQ then 
		Operator = nil
		State = STATE.ONE
	elseif Value == OPERATOR.CLR then 
		Operator = nil
		State = STATE.ONE
		Result = 0
	elseif Value == OPERATOR.ADD then 
		Operator = Value
		State = STATE.THREE
	elseif Value == OPERATOR.SUB then 
		Operator = Value
		State = STATE.THREE
	elseif Value == OPERATOR.MUL then 
		Operator = Value
		State = STATE.THREE
	elseif Value == OPERATOR.DIV then 
		Operator = Value
		State = STATE.THREE
	else 
		Operand1 = Value
		Result = Value
		State = STATE.TWO
	end
	return(Result)
end ]]

local State23 = {}

function State23.AddSubMulDiv(Value)
	local Result = Operand1
	Operator = Value
	State = STATE.THREE
	return (Result)
end

local State2Table= {}
State2Table["="] = {operator = function(Value) return(State123.Eq(Value)) end}
State2Table["CLR"] = {operator = function(Value) return(State123.Clr(Value)) end}
State2Table["+"] = {operator = function(Value) return(State23.AddSubMulDiv(Value)) end}
State2Table["-"] = {operator = function(Value) return(State23.AddSubMulDiv(Value)) end}
State2Table["*"] = {operator = function(Value) return(State23.AddSubMulDiv(Value)) end}
State2Table["/"] = {operator = function(Value) return(State23.AddSubMulDiv(Value)) end}

-- Waiting for Operator
function StateFunction.State2(Value)
	return (State2Table[Value].operator(Value))
end

--[[ -- Waiting for Operator
function StateFunction.State2(Value)
	local Result = Operand1
	if Value == OPERATOR.EQ then 
		Operator = nil
		State = STATE.ONE
	elseif Value == OPERATOR.CLR then 
		Operator = nil
		State = STATE.ONE
	elseif Value == OPERATOR.ADD then 
		Operator = Value
		State = STATE.THREE
	elseif Value == OPERATOR.SUB then 
		Operator = Value
		State = STATE.THREE
	elseif Value == OPERATOR.MUL then 
		Operator = Value
		State = STATE.THREE
	elseif Value == OPERATOR.DIV then 
		Operator = Value
		State = STATE.THREE
	else
		-- ignore all numerical input
	end
	return(Result)
end ]]

local State3 = {}

function State3.Number(Value)
	Operand2 = Value
	State = STATE.FOUR
	Result = Value
	return(Result)
end

local State3Table= {}
State3Table["="] = {operator = function(Value) return(State123.Eq(Value)) end}
State3Table["CLR"] = {operator = function(Value) return(State123.Clr(Value)) end}
State3Table["+"] = {operator = function(Value) return(State23.AddSubMulDiv(Value)) end}
State3Table["-"] = {operator = function(Value) return(State23.AddSubMulDiv(Value)) end}
State3Table["*"] = {operator = function(Value) return(State23.AddSubMulDiv(Value)) end}
State3Table["/"] = {operator = function(Value) return(State23.AddSubMulDiv(Value)) end}
State3Table["0"] = {operator = function(Value) return(State3.Number(Value)) end}
State3Table["1"] = {operator = function(Value) return(State3.Number(Value)) end}
State3Table["2"] = {operator = function(Value) return(State3.Number(Value)) end}
State3Table["3"] = {operator = function(Value) return(State3.Number(Value)) end}
State3Table["4"] = {operator = function(Value) return(State3.Number(Value)) end}
State3Table["5"] = {operator = function(Value) return(State3.Number(Value)) end}
State3Table["6"] = {operator = function(Value) return(State3.Number(Value)) end}
State3Table["7"] = {operator = function(Value) return(State3.Number(Value)) end}
State3Table["8"] = {operator = function(Value) return(State3.Number(Value)) end}
State3Table["9"] = {operator = function(Value) return(State3.Number(Value)) end}

-- Waiting for Operand2. If no Operand2, ignore
function StateFunction.State3(Value)
	return (State3Table[Value].operator(Value))
end

--[[ -- Waiting for Operand2. If no Operand2, ignore
function StateFunction.State3(Value)
	local Result = Operand1
	-- If you press an Operator key without prior Operand, current Operand1 is saved 
	if Value == OPERATOR.EQ then 
		Operator = nil
		State = STATE.ONE
	elseif Value == OPERATOR.CLR then 
		Operator = nil
		State = STATE.ONE
	elseif Value == OPERATOR.ADD then 
		Operator = Value
		State = STATE.THREE
	elseif Value == OPERATOR.SUB then 
		Operator = Value
		State = STATE.THREE
	elseif Value == OPERATOR.MUL then 
		Operator = Value
		State = STATE.THREE
	elseif Value == OPERATOR.DIV then 
		Operator = Value
		State = STATE.THREE
	else 
		Operand2 = Value
		State = STATE.FOUR
		Result = Value
	end
	return(Result)
end ]]

State4 = {}

local State4Table= {}
State4Table["="] = {operator = function(Value) return(State4.Equals(Value)) end}
State4Table["CLR"] = {operator = function(Value) return(State4.Clr(Value)) end}
State4Table["+"] = {operator = function(Value) return(State4.Add(Value, STATE.THREE)) end}
State4Table["-"] = {operator = function(Value) return(State4.Subtract(Value, STATE.THREE)) end}
State4Table["*"] = {operator = function(Value) return(State4.Multiply(Value, STATE.THREE)) end}
State4Table["/"] = {operator = function(Value) return(State4.Divide(Value, STATE.THREE)) end}

local State41Table= {}
State41Table["+"] = {operator = function(Value) return(State4.Add(Value, STATE.ONE)) end}
State41Table["-"] = {operator = function(Value) return(State4.Subtract(Value, STATE.ONE)) end}
State41Table["*"] = {operator = function(Value) return(State4.Multiply(Value, STATE.ONE)) end}
State41Table["/"] = {operator = function(Value) return(State4.Divide(Value, STATE.ONE)) end}

-- Waiting for Operator or Equals and process the first operation.
function StateFunction.State4xxxx(Value)
	return (State4Table[Value].operator(Value))
end

-- Subfunction of State4() to process the Operator
local function State41(Value)
	local Result = nil
	if Operator == OPERATOR.ADD then 
		Result = State4.Add(Value, STATE.THREE)
	elseif Operator == OPERATOR.SUB then 
		Result = State4.Subtract(Value, STATE.THREE)
	elseif Operator == OPERATOR.MUL then 
		Result = State4.Multiply(Value, STATE.THREE)
	elseif Operator == OPERATOR.DIV then 
		Result = State4.Divide(Value, STATE.THREEa)
	else
	end
	return(Result)
end  

function State4.Add(Value, NewState)
    Operand1 = Operand1 + Operand2
	Operator = Value
	State = NewState
	return( Operand1 )
end

function State4.Subtract(Value, NewState)
    Operand1 = Operand1 - Operand2
	Operator = Value
	State = NewState
	return( Operand1 )
end

function State4.Multiply(Value, NewState)
    Operand1 = Operand1 * Operand2
	Operator = Value
	State = NewState
	return( Operand1 )
end

function State4.Divide(Value, NewState)
    if Operand2 == 0
	then
	    Operand1 = 65535
	else
		Operand1 = Operand1 / Operand2
	end
	Operator = Value
	State = NewState
	return( Operand1 )
end

function State4.Equals(Value)
	-- local Result = State41()
	local Result = State41Table[Operator].operator(nil, STATE.ONE)
	Operand2 = 0
	return( Result )
end

function State4.Clear(Value)
	local Result = 0
	Operand1 = 0
	Operand2 = 0
	Operator = nil
	State = STATE.ONE
	return( Result )
end

-- Waiting for Operator or Equals and process the first operation.
function StateFunction.State4(Value)
	local Result = nil
	if Value == OPERATOR.EQ then
		Result = State4.Equals(Value)
	elseif Value == OPERATOR.CLR then
		Result = State4.Clear(Value)
	else
		Result = State41(Value)
	end
	return(Result)
end

-- ErrorState. Can just be cleaned by pressing "CLR" button
function StateFunction.State5(Value)
	if Value == OPERATOR.CLR then 
		Operand1 = 0
		Operand2 = 0
		Operator = nil
		State = STATE.ONE
	end
end


local function PrintDebugState(Value)
	print ("State = " .. State)
	print ("Operand1 = " .. Operand1)
	print ("Operand2 = " .. Operand2)
	print ("Operator = ")
	print (Operator)
	print ("Result of Calculation = ")
	print (Value)
end   

-- ***************
-- Global functions
-- ***************

function Calculate(Value)
	local Result = StateTable[State].State(Value)
	PrintDebugState(Result)
   return ( Result )
end

--[[ function Calculate(Value)
	local Result = nil
	if State == STATE.ONE then 
		-- 1 - Waiting for Operand1 or Operator
		Result = StateFunction.State1(Value)
	elseif State == STATE.TWO then 
		-- 2 - Waiting for Operator
		Result = StateFunction.State2(Value)
	elseif State == STATE.THREE then 
		-- 3 - Waiting for Operand2. If no Operand2, ignore
		Result = StateFunction.State3(Value)
	elseif State == STATE.FOUR then 
		-- 4 - Waiting for Operator or Equals and process the first operation.
		Result = StateFunction.State4(Value)
	else 
		-- 5 - ErrorState. Can just be cleaned by pressing "CLR" button
		Result = StateFunction.State5(Value)
	end
	PrintDebugState(Result)
   return ( Result )
end ]]

-- print("CalculateScript processed")

-- Make global functions global
return {
	Calculate = Calculate,
}
