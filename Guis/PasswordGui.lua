local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Password = Instance.new("TextBox")
local EnterPassword = Instance.new("TextButton")
local Title = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
main.Position = UDim2.new(0.266725361, 0, 0.256505549, 0)
main.Size = UDim2.new(0.465669006, 0, 0.477695227, 0)

UICorner.Parent = main

Password.Name = "Password"
Password.Parent = main
Password.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
Password.Position = UDim2.new(0.267190576, 0, 0.256097555, 0)
Password.Size = UDim2.new(0.479371309, 0, 0.203252032, 0)
Password.Font = Enum.Font.SourceSans
Password.Text = "Password Here"
Password.TextColor3 = Color3.fromRGB(0, 255, 17)
Password.TextScaled = true
Password.TextSize = 14.000
Password.TextWrapped = true

EnterPassword.Name = "EnterPassword"
EnterPassword.Parent = main
EnterPassword.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EnterPassword.Position = UDim2.new(0.302554041, 0, 0.617886186, 0)
EnterPassword.Size = UDim2.new(0.392927319, 0, 0.203252032, 0)
EnterPassword.Font = Enum.Font.FredokaOne
EnterPassword.Text = "Enter"
EnterPassword.TextColor3 = Color3.fromRGB(0, 0, 0)
EnterPassword.TextScaled = true
EnterPassword.TextSize = 14.000
EnterPassword.TextWrapped = true

Title.Name = "Title"
Title.Parent = main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(1, 0, 0.203252032, 0)
Title.Font = Enum.Font.FredokaOne
Title.Text = "Please Enter Password"
Title.TextColor3 = Color3.fromRGB(255, 0, 0)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

local function RUCZDS_fake_script() 
	local script = Instance.new('LocalScript', EnterPassword)

	local s = script.Parent
	
	s.MouseButton1Click:Connect(function()
		if s.Parent.Password.Text == "vcsk0" then
			print("valid password!")
			s.Parent.Parent.main.Visible = false
            game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "valid Password!",
				Text = ".",
				Icon = "rbxassetid://8932511170"})
			Duration = 5;
		else
			print("invalid password!")
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "Invalid Password!",
				Text = "Subcribe Vcsk0 for Password",
				Icon = "rbxassetid://8932511170"})
			Duration = 5;
		end
	end)
end
coroutine.wrap(RUCZDS_fake_script)()
local function PSWNTZB_fake_script() 
	local script = Instance.new('LocalScript', main)

	main = script.Parent.Parent.main
	main.Draggable = true
	main.Selectable = true
	main.Active = true
end
coroutine.wrap(PSWNTZB_fake_script)()
