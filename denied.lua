local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local textLabel = Instance.new("TextLabel")
textLabel.Parent = screenGui
textLabel.Size = UDim2.new(0, 420, 0, 50)
textLabel.Position = UDim2.new(0.5, -150, 0.5, -25)
textLabel.Text = "YOU ARE NOT WHITELISTED"
textLabel.TextSize = 24
textLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  
textLabel.BorderSizePixel = 2  
textLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)  
textLabel.BackgroundTransparency = 0  

wait(5)

textLabel:Destroy()
