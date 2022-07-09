local KickPanel = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local Button = Instance.new("TextButton")
local Shadow = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Target = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local Reason = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton_2 = Instance.new("TextButton")

--Properties:

KickPanel.Name = "KickPanel"
KickPanel.Parent = game.Workspace.KickPanel.Ungroup in ServerScriptService.Show

Frame.Parent = KickPanel
Frame.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Frame.Position = UDim2.new(0.0641200542, 0, 0.229067937, 0)
Frame.Size = UDim2.new(0, 247, 0, 201)
Frame.Active = true
Frame.Draggable = true

UICorner.Parent = Frame

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Position = UDim2.new(0.792958915, 0, -0.00112074614, 0)
TextButton.Size = UDim2.new(0, 51, 0, 36)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

Button.Name = "Button"
Button.Parent = Frame
Button.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0.0541090518, 0, 0.706659138, 0)
Button.Size = UDim2.new(0, 219, 0, 45)
Button.ZIndex = 2
Button.Font = Enum.Font.GothamMedium
Button.Text = ""
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextScaled = true
Button.TextSize = 14.000
Button.TextWrapped = true
Button.MouseButton1Down:Connect(function()
	local Target = script.Parent.Parent.Target
	local Reason = script.Parent.Parent.Reason

	local Remotes = game.ReplicatedStorage.Remotes

	script.Parent.MouseButton1Click:Connect(function()
		Remotes.Kick:FireServer(Target.Text, Reason.Text)
	end)
end)

Shadow.Name = "Shadow"
Shadow.Parent = Button
Shadow.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow.BorderSizePixel = 0
Shadow.Size = UDim2.new(1, 0, 1, 4)

TextLabel.Parent = Button
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.Size = UDim2.new(1, -20, 1, -20)
TextLabel.ZIndex = 2
TextLabel.Font = Enum.Font.GothamMedium
TextLabel.Text = "Kick"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Target.Name = "Target"
Target.Parent = Frame
Target.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
Target.Position = UDim2.new(0.0541090257, 0, 0.177189529, 0)
Target.Size = UDim2.new(0, 219, 0, 42)
Target.Font = Enum.Font.SourceSans
Target.PlaceholderText = "Target's Username"
Target.Text = ""
Target.TextColor3 = Color3.fromRGB(0, 0, 0)
Target.TextScaled = true
Target.TextSize = 14.000
Target.TextWrapped = true


UICorner_2.Parent = Target

Reason.Name = "Reason"
Reason.Parent = Frame
Reason.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
Reason.Position = UDim2.new(0.0541090257, 0, 0.449582309, 0)
Reason.Size = UDim2.new(0, 219, 0, 42)
Reason.Font = Enum.Font.SourceSans
Reason.PlaceholderText = "Reason"
Reason.Text = ""
Reason.TextColor3 = Color3.fromRGB(0, 0, 0)
Reason.TextScaled = true
Reason.TextSize = 14.000
Reason.TextWrapped = true

UICorner_3.Parent = Reason

TextLabel_2.Parent = Frame
TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.396479428, 0, 0.0889918357, 0)
TextLabel_2.Size = UDim2.new(0.873930514, -20, 0.277486235, -20)
TextLabel_2.ZIndex = 2
TextLabel_2.Font = Enum.Font.GothamMedium
TextLabel_2.Text = "Kick Panel"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextButton_2.Parent = KickPanel
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BackgroundTransparency = 1.000
TextButton_2.Position = UDim2.new(-0.000356256554, 0, 0.90409255, 0)
TextButton_2.Size = UDim2.new(0, 83, 0, 36)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Open Kick Panel"
TextButton_2.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

-- Scripts:

local function HFBT_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local frame = script.Parent.Parent

	script.Parent.MouseButton1Click:Connect(function()
		frame.Visible = false
	end)
end
coroutine.wrap(HFBT_fake_script)()
local function HEZO_fake_script() -- Button.LocalScript 
	local script = Instance.new('LocalScript', Button)

	local Target = script.Parent.Parent.Target
	local Reason = script.Parent.Parent.Reason

	local Remotes = game.ReplicatedStorage.Remotes

	script.Parent.MouseButton1Click:Connect(function()
		Remotes.Kick:FireServer(Target.Text, Reason.Text)
	end)
end
coroutine.wrap(HEZO_fake_script)()
local function OGBVG_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	local Frame = script.Parent.Parent.Frame

	script.Parent.MouseButton1Click:Connect(function()
		if Frame.Visible == true then
			Frame.Visible = false
		else
			Frame.Visible = true
		end
	end)
end
coroutine.wrap(OGBVG_fake_script)()
