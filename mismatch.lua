local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local textLabel = Instance.new("TextLabel")
textLabel.Parent = screenGui
textLabel.Size = UDim2.new(0, 610, 0, 50)
textLabel.Position = UDim2.new(0.35, 0, 0.5, 0)
textLabel.Text = "HWID MISMATCH! CONTACT J3NGK4L"
textLabel.TextSize = 24
textLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  
textLabel.BorderSizePixel = 2  
textLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)  
textLabel.BackgroundTransparency = 0  

wait(5)

textLabel:Destroy()
