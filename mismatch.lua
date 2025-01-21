local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the warning label
local textLabel = Instance.new("TextLabel")
textLabel.Parent = screenGui
textLabel.Size = UDim2.new(0, 610, 0, 50)  -- Fixed width but relative height
textLabel.Position = UDim2.new(0.5, -305, 0.4, -25)  -- Centered position based on screen
textLabel.Text = "HWID MISMATCH! CONTACT J3NGK4L"
textLabel.TextSize = 24
textLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.BorderSizePixel = 2
textLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
textLabel.BackgroundTransparency = 0

-- Create loading bar background
local loadingBar = Instance.new("Frame")
loadingBar.Parent = screenGui
loadingBar.Size = UDim2.new(0, 610, 0, 10)  -- Fixed width but relative height
loadingBar.Position = UDim2.new(0.5, -305, 0.5, 0)  -- Centered position based on screen
loadingBar.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
loadingBar.BorderSizePixel = 0

-- Create loading bar animation
local loadingProgress = Instance.new("Frame")
loadingProgress.Parent = loadingBar
loadingProgress.Size = UDim2.new(0, 0, 1, 0)  -- Start with no progress
loadingProgress.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
loadingProgress.BorderSizePixel = 0

-- Create a corner for rounded edges
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 5)
corner.Parent = loadingBar

-- Animate the loading bar
local TweenService = game:GetService("TweenService")
local goal = {Size = UDim2.new(0, 610, 1, 0)}  -- Full size of the loading bar

local tweenInfo = TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true) -- Repeat animation
local tween = TweenService:Create(loadingProgress, tweenInfo, goal)
tween:Play()

wait(5)  -- Display the message and loading animation for 5 seconds

textLabel:Destroy()
loadingBar:Destroy()
