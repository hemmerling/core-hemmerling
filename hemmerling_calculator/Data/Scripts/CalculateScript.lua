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
local OPERATION = {
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

-- State 1

local State1 = {}
local State123 = {}
local State1Table= {}

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

State1Table["="] = {Action = function(Value) return(State123.Eq(Value)) end}
State1Table["CLR"] = {Action = function(Value) return(State123.Clr(Value)) end}
State1Table["+"] = {Action = function(Value) return(State1.AddSubMulDiv(Value)) end}
State1Table["-"] = {Action = function(Value) return(State1.AddSubMulDiv(Value)) end}
State1Table["*"] = {Action = function(Value) return(State1.AddSubMulDiv(Value)) end}
State1Table["/"] = {Action = function(Value) return(State1.AddSubMulDiv(Value)) end}
State1Table["0"] = {Action = function(Value) return(State1.Number(Value)) end}
State1Table["1"] = {Action = function(Value) return(State1.Number(Value)) end}
State1Table["2"] = {Action = function(Value) return(State1.Number(Value)) end}
State1Table["3"] = {Action = function(Value) return(State1.Number(Value)) end}
State1Table["4"] = {Action = function(Value) return(State1.Number(Value)) end}
State1Table["5"] = {Action = function(Value) return(State1.Number(Value)) end}
State1Table["6"] = {Action = function(Value) return(State1.Number(Value)) end}
State1Table["7"] = {Action = function(Value) return(State1.Number(Value)) end}
State1Table["8"] = {Action = function(Value) return(State1.Number(Value)) end}
State1Table["9"] = {Action = function(Value) return(State1.Number(Value)) end}

-- Waiting for Operand1 or Operator
function StateFunction.State1x(Value)
	return (State1Table[Value].Action(Value))
end

-- Waiting for Operand1 or Operator
function StateFunction.State1(Value)
	local Result = nil
	-- If you press an Operator key without prior Operand, current Operand1 is saved 
	if Value == OPERATION.EQ then 
		Result = State123.Eq(Value)
	elseif Value == OPERATION.CLR then 
		Result = State123.Clr(Value)
	elseif Value == OPERATION.ADD then 
		Result = State1.AddSubMulDiv(Value)
	elseif Value == OPERATION.SUB then 
		Result = State1.AddSubMulDiv(Value)
	elseif Value == OPERATION.MUL then 
		Result = State1.AddSubMulDiv(Value)
	elseif Value == OPERATION.DIV then 
		Result = State1.AddSubMulDiv(Value)
	else 
		Result = State1.Number(Value)
	end
	return(Result)
end

-- State 2

local State2 = {}
local State23 = {}
local State2Table= {}

function State23.AddSubMulDiv(Value)
	local Result = Operand1
	Operator = Value
	State = STATE.THREE
	return (Result)
end

function State2.Number(Value)
	local Result = nil
	if Operand1 == 0 then
		Operand1 = Value
	else
		Operand1 = Operand1 .. Value
	end
	Result = Operand1
	State = STATE.TWO
	return(Result)
end

State2Table["="] = {Action = function(Value) return(State123.Eq(Value)) end}
State2Table["CLR"] = {Action = function(Value) return(State123.Clr(Value)) end}
State2Table["+"] = {Action = function(Value) return(State23.AddSubMulDiv(Value)) end}
State2Table["-"] = {Action = function(Value) return(State23.AddSubMulDiv(Value)) end}
State2Table["*"] = {Action = function(Value) return(State23.AddSubMulDiv(Value)) end}
State2Table["/"] = {Action = function(Value) return(State23.AddSubMulDiv(Value)) end}
--
State2Table["0"] = {Action = function(Value) return(State2.Number(Value)) end}
State2Table["1"] = {Action = function(Value) return(State2.Number(Value)) end}
State2Table["2"] = {Action = function(Value) return(State2.Number(Value)) end}
State2Table["3"] = {Action = function(Value) return(State2.Number(Value)) end}
State2Table["4"] = {Action = function(Value) return(State2.Number(Value)) end}
State2Table["5"] = {Action = function(Value) return(State2.Number(Value)) end}
State2Table["6"] = {Action = function(Value) return(State2.Number(Value)) end}
State2Table["7"] = {Action = function(Value) return(State2.Number(Value)) end}
State2Table["8"] = {Action = function(Value) return(State2.Number(Value)) end}
State2Table["9"] = {Action = function(Value) return(State2.Number(Value)) end}

-- Waiting for Operator
function StateFunction.State2x(Value)
	return (State2Table[Value].Action(Value))
end

-- Waiting for Operator
function StateFunction.State2(Value)
	local Result = nil
	if Value == OPERATION.EQ then 
		Result = State123.Eq(Value)
	elseif Value == OPERATION.CLR then 
		Result = State123.Clr(Value)
	elseif Value == OPERATION.ADD then 
		Result = State23.AddSubMulDiv(Value)
	elseif Value == OPERATION.SUB then 
		Result = State23.AddSubMulDiv(Value)
	elseif Value == OPERATION.MUL then 
		Result = State23.AddSubMulDiv(Value)
	elseif Value == OPERATION.DIV then 
		Result = State23.AddSubMulDiv(Value)
	else
		Result = State2.Number(Value)
	end
	return(Result)
end

-- State 3

local State3 = {}
local State3Table= {}

function State3.Number(Value)
	Operand2 = Value
	State = STATE.FOUR
	Result = Value
	return(Result)
end

State3Table["="] = {Action = function(Value) return(State123.Eq(Value)) end}
State3Table["CLR"] = {Action = function(Value) return(State123.Clr(Value)) end}
State3Table["+"] = {Action = function(Value) return(State23.AddSubMulDiv(Value)) end}
State3Table["-"] = {Action = function(Value) return(State23.AddSubMulDiv(Value)) end}
State3Table["*"] = {Action = function(Value) return(State23.AddSubMulDiv(Value)) end}
State3Table["/"] = {Action = function(Value) return(State23.AddSubMulDiv(Value)) end}
State3Table["0"] = {Action = function(Value) return(State3.Number(Value)) end}
State3Table["1"] = {Action = function(Value) return(State3.Number(Value)) end}
State3Table["2"] = {Action = function(Value) return(State3.Number(Value)) end}
State3Table["3"] = {Action = function(Value) return(State3.Number(Value)) end}
State3Table["4"] = {Action = function(Value) return(State3.Number(Value)) end}
State3Table["5"] = {Action = function(Value) return(State3.Number(Value)) end}
State3Table["6"] = {Action = function(Value) return(State3.Number(Value)) end}
State3Table["7"] = {Action = function(Value) return(State3.Number(Value)) end}
State3Table["8"] = {Action = function(Value) return(State3.Number(Value)) end}
State3Table["9"] = {Action = function(Value) return(State3.Number(Value)) end}

-- Waiting for Operand2. If no Operand2, ignore
function StateFunction.State3x(Value)
	return (State3Table[Value].Action(Value))
end

-- Waiting for Operand2. If no Operand2, ignore
function StateFunction.State3(Value)
	local Result = nil
	-- If you press an Operator key without prior Operand, current Operand1 is saved 
	if Value == OPERATION.EQ then 
		Result = State123.Eq(Value)
	elseif Value == OPERATION.CLR then 
		Result = State123.Clr(Value)
	elseif Value == OPERATION.ADD then 
		Result = State23.AddSubMulDiv(Value)
	elseif Value == OPERATION.SUB then 
		Result = State23.AddSubMulDiv(Value)
	elseif Value == OPERATION.MUL then 
		Result = State23.AddSubMulDiv(Value)
	elseif Value == OPERATION.DIV then 
		Result = State23.AddSubMulDiv(Value)
	else 
		Result = State3.Number(Value)
	end
	return(Result)
end

-- State 4

local State4 = {}
local State4Table = {}
local State41Table = {}

function State4.Number(Value)
	local Result = nil
	if Operand2 == 0 then
		Operand2 = Value
	else
		Operand2 = Operand2 .. Value
	end
	Result = Operand2
	State = STATE.FOUR
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

function State4.Clear(Value)
	local Result = 0
	Operand1 = 0
	Operand2 = 0
	Operator = nil
	State = STATE.ONE
	return( Result )
end

State4Table["="] = {Action = function(Value) return(State4.Equals(Value)) end}
State4Table["CLR"] = {Action = function(Value) return(State4.Clr(Value)) end}
State4Table["0"] = {Action = function(Value) return(State4.Number(Value)) end}
State4Table["1"] = {Action = function(Value) return(State4.Number(Value)) end}
State4Table["2"] = {Action = function(Value) return(State4.Number(Value)) end}
State4Table["3"] = {Action = function(Value) return(State4.Number(Value)) end}
State4Table["4"] = {Action = function(Value) return(State4.Number(Value)) end}
State4Table["5"] = {Action = function(Value) return(State4.Number(Value)) end}
State4Table["6"] = {Action = function(Value) return(State4.Number(Value)) end}
State4Table["7"] = {Action = function(Value) return(State4.Number(Value)) end}
State4Table["8"] = {Action = function(Value) return(State4.Number(Value)) end}
State4Table["9"] = {Action = function(Value) return(State4.Number(Value)) end}
State4Table["+"] = {Action = function(Value) return(State4.AddSubMulDiv(Value)) end}
State4Table["-"] = {Action = function(Value) return(State4.AddSubMulDiv(Value)) end}
State4Table["*"] = {Action = function(Value) return(State4.AddSubMulDiv(Value)) end}
State4Table["/"] = {Action = function(Value) return(State4.AddSubMulDiv(Value)) end}

State41Table["+"] = {Action = function(Value) return(State4.Add(Value, STATE.ONE)) end}
State41Table["-"] = {Action = function(Value) return(State4.Subtract(Value, STATE.ONE)) end}
State41Table["*"] = {Action = function(Value) return(State4.Multiply(Value, STATE.ONE)) end}
State41Table["/"] = {Action = function(Value) return(State4.Divide(Value, STATE.ONE)) end}

-- Waiting for Operator or Equals and process the first operation.
function StateFunction.State4x(Value)
	return (State4Table[Value].Action(Value))
end

-- Subfunction of State4() to process the Operator
local function State41(Value)
	local Result = nil
	if Operator == OPERATION.ADD then 
		Result = State4.Add(Value, STATE.ONE)
	elseif Operator == OPERATION.SUB then 
		Result = State4.Subtract(Value, STATE.ONE)
	elseif Operator == OPERATION.MUL then 
		Result = State4.Multiply(Value, STATE.ONE)
	elseif Operator == OPERATION.DIV then 
		Result = State4.Divide(Value, STATE.ONE)
	else
		-- should not happen! 
	end
	return(Result)
end  

function State4.Equals(Value)
	local Result = State41()
	-- local Result = State41Table[Operator].Action(nil)
	Operand2 = 0
	Operator = nil
	State = STATE.ONE
	return( Result )
end

function State4.AddSubMulDiv(Value)
	local Result = State41()
	-- local Result = State41Table[Operator].Action(nil)
	Operand2 = 0
	Operator = Value	
	State = STATE.THREE
	return( Result )
end

local ZeroToNineTable1 = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'}
local ZeroToNineTable2 = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}

local function isNumeric (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

-- Waiting for Operator or Equals and process the first operation.
function StateFunction.State4(Value)
	local Result = nil
	if Value == OPERATION.EQ then
		Result = State4.Equals(Value)
	elseif Value == OPERATION.CLR then
		Result = State4.Clear(Value)
	elseif isNumeric(ZeroToNineTable2, Value) then
		Result =  State4.Number(Value)
	else
		Result = State4.AddSubMulDiv(Value)
	end
	return(Result)
end

-- State 5

-- The ErrorState may just be cleaned by pressing "CLR" button
function StateFunction.State5(Value)
	local Result = nil
	if Value == OPERATION.CLR then 
		Result = 0
		Operand1 = 0
		Operand2 = 0
		Operator = nil
		State = STATE.ONE
	end
	return(Result)
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
