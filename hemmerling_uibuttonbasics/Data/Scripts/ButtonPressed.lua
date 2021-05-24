local Button = script.parent
local Text = script:GetCustomProperty("Text"):WaitForObject()

function clickedButton()
    Text.text = "We made a functional button!"
end

Button.clickedEvent:Connect(clickedButton)