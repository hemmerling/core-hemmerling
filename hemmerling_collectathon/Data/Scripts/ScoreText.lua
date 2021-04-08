local scoreText = script:GetCustomProperty("ScoreText"):WaitForObject()
local propText = script:GetCustomProperty("text")
local all_Pickups = script:GetCustomProperty("All_Pickups"):WaitForObject()
local allPickupsArray = all_Pickups:GetChildren()
local listLength = 0
local currentScore = 0

print(allPickupsArray)

scoreText.text = "Hello"
-- scoreText.text = propText
-- updateText()

for _, child in ipairs(allPickupsArray) do
    listLength = listLength + 1
end

print(listLength)

function updateText()
    scoreText.text = propText 
end

function updateScore(scoreToAdd)
    print("Test broadcasting")

    currentScore = currentScore + scoreToAdd
    scoreText.text = ""..currentScore..""

    if currentScore == listLength then
        scoreText.text = "Player Won!"
    end
end

Events.Connect("AddScoreToPlayer",updateScore)
-- updateText()
