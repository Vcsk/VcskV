--// Not Mine(patched) \\--

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

Notification:Notify(
    {Title = "Notification", Description = "You'll need a lot of tools!"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 2, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)

local lp = game:FindService("Players").LocalPlayer


local Library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local Window = Library:CreateWindow("Brookhaven")

local s1 = Window:CreateFolder("Main")
local s2 = Window:CreateFolder("How to get ban")

s1:Button("Bring All", function()

	for i,Playys in pairs(game.Players:GetPlayers()) do
		Playys.Character.HumanoidRootPart.CFrame = lp.Character.HumanoidRootPart.CFrame
		lp.Character.Humanoid:Clone().Parent = lp.Character
		lp.Character.Humanoid:Destroy()
		game.Workspace.CurrentCamera.CameraSubject = lp.Character.Head
	end
	wait(0.1)
	for i,tools in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
		if tools:IsA("Tool") then
			tools.Parent = game.Players.LocalPlayer.Character
		end
	end
end) 


s1:Button("Fling All", function()
	for i,Playys in pairs(game.Players:GetPlayers()) do
		Playys.Character.HumanoidRootPart.CFrame = lp.Character.HumanoidRootPart.CFrame
		lp.Character.Humanoid:Clone().Parent = lp.Character
		lp.Character.Humanoid:Destroy()
		game.Workspace.CurrentCamera.CameraSubject = lp.Character.Head
	end
	wait(1)
	for i,tools in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
		if tools:IsA("Tool") then
			tools.Parent = game.Players.LocalPlayer.Character
		end
	end
		wait(2)
		local Thrust = Instance.new('BodyThrust', lp.Character.HumanoidRootPart)
		Thrust.Force = Vector3.new(9999,9999,9999)
		Thrust.Name = "flingForce"
end)

s1:Button("Kill All", function()
	for i,Playys in pairs(game.Players:GetPlayers()) do
		Playys.Character.HumanoidRootPart.CFrame = lp.Character.HumanoidRootPart.CFrame
		lp.Character.Humanoid:Clone().Parent = lp.Character
		lp.Character.Humanoid:Destroy()
		game.Workspace.CurrentCamera.CameraSubject = lp.Character.Head
	end
	wait(0.1)
	for i,tools in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
		if tools:IsA("Tool") then
			tools.Parent = game.Players.LocalPlayer.Character
		end
	end
		wait(2)
		local Thrust = Instance.new('BodyThrust', lp.Character.HumanoidRootPart)
		Thrust.Force = Vector3.new(99999999,99999999,9999)
		Thrust.Name = "flingForce"
end)

s1:Button("Corruption Chat", function()
while true do
wait(0.6)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I WILL ###### YOU ALL!", "ALL")
wait(1)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("HAHAHAHAHA! ", "ALL")
wait(0.9)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("HAHAHAHHAHAHAHAHAHAAHAHAHHAHAHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAH", "ALL")
wait(0.25)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("HAHAHAHHAHAHAHAHAHAAHAHAHHAHAHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAH", "ALL")
wait(0.10)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("YOU CAN'T STOP ME! THERES NOTHING YOU CAN DO!", "ALL")
wait(0.6)
   end
end)

s2:Button("Click to get ban", function()
while true do
wait(0.6)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("You guys are pro", "ALL")
wait(1)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Y'all are so pro", "ALL")
wait(1.3)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Hello", "ALL")
wait(1.5)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Yee", "ALL")
wait(1.7)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("qwerty", "ALL")
wait(2)
   end
end)
