local ScreenGui = Instance.new("ScreenGui")
local Button = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Button.Name = "Button"
Button.Parent = ScreenGui
Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Button.BackgroundTransparency = 0.700
Button.Position = UDim2.new(0, 0, 0.469249964, 0)
Button.Size = UDim2.new(0.131393284, 0, 0.082329005, 0)
Button.Font = Enum.Font.Garamond
Button.Text = "Toggle"
Button.TextColor3 = Color3.fromRGB(40, 40, 40)
Button.TextSize = 30.000
Button.TextWrapped = true
Button.Draggable = true
Button.Selectable = true
Button.Active = true
Button.MouseButton1Down:Connect(function()
local vim = game:service("VirtualInputManager")
	vim:SendKeyEvent(true, "RightControl", false, game)

local vim = game:service("VirtualInputManager")
	vim:SendKeyEvent(fales, "RightControl", false, game)
end)
wait(1)

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom
local ChaseStart = game:GetService("ReplicatedStorage").GameData.ChaseStart
local CF = CFrame.new
local plr = game.Players.LocalPlayer
local plrname = plr.Name
local plrid = plr.UserId

if game:GetService("CoreGui"):FindFirstChild("Derp X") then
   game:GetService("CoreGui"):FindFirstChild("Derp X"):Destroy()
end
local UILib = loadstring(game:HttpGet('https://raw.githubusercontent.com/Vcsk/UiLibrary/main/DerpX.lua'))();
local win = UILib:Window("Derp X | Doors | V1.00",Color3.fromRGB(102, 255, 153), Enum.KeyCode.RightControl)

local s1 = win:Tab("Main")
local s2 = win:Tab("Character")
local s3 = win:Tab("Visuals")
local s4 = win:Tab("Mods")

local pcl = Instance.new("SpotLight")
pcl.Brightness = 1
pcl.Face = Enum.NormalId.Front
pcl.Range = 90
pcl.Parent = game.Players.LocalPlayer.Character.Head
pcl.Enabled = false

s2:Dropdown("Speed", {"25", "35", "50"}, function(v)
    Select = v
end)

s2:Toggle("Enable Speed",false, function(v)
_G.EnableSpeed = (v and true or false)
while _G.EnableSpeed == true do wait()
    pcall(function()
    plr.Character.Humanoid.WalkSpeed = Select
    end)
 end
end)

s1:Toggle("Headlight",false, function(Value)
        pcl.Enabled = Value
end)

s1:Toggle("FullBright","No Info", function()
if not _G.FBEX then

    _G.FBE = false

    _G.NormalLightingSettings = {
        Brightness = game:GetService("Lighting").Brightness,
        ClockTime = game:GetService("Lighting").ClockTime,
        FogEnd = game:GetService("Lighting").FogEnd,
        GlobalShadows = game:GetService("Lighting").GlobalShadows,
        Ambient = game:GetService("Lighting").Ambient
    }

    game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
        if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
            _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
            if not _G.FBE then
                repeat
                    wait()
                until _G.FBE
            end
            game:GetService("Lighting").Brightness = 1
        end
    end)

    game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
        if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
            _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
            if not _G.FBE then
                repeat
                    wait()
                until _G.FBE
            end
            game:GetService("Lighting").ClockTime = 12
        end
    end)

    game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
        if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
            _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
            if not _G.FBE then
                repeat
                    wait()
                until _G.FBE
            end
            game:GetService("Lighting").FogEnd = 786543
        end
    end)

    game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
        if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
            _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
            if not _G.FBE then
                repeat
                    wait()
                until _G.FBE
            end
            game:GetService("Lighting").GlobalShadows = false
        end
    end)

    game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
        if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
            _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
            if not _G.FBE then
                repeat
                    wait()
                until _G.FBE
            end
            game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
        end
    end)

    game:GetService("Lighting").Brightness = 1
    game:GetService("Lighting").ClockTime = 12
    game:GetService("Lighting").FogEnd = 786543
    game:GetService("Lighting").GlobalShadows = false
    game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

    local LatestValue = true
    spawn(function()
        repeat
            wait()
        until _G.FBE
        while wait() do
            if _G.FBE ~= LatestValue then
                if not _G.FBE then
                    game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
                    game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
                    game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
                    game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
                    game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
                else
                    game:GetService("Lighting").Brightness = 1
                    game:GetService("Lighting").ClockTime = 12
                    game:GetService("Lighting").FogEnd = 786543
                    game:GetService("Lighting").GlobalShadows = false
                    game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                end
                LatestValue = not LatestValue
            end
        end
    end)
end

_G.FBEX = true
_G.FBE = not _G.FBE
end)

s1:Toggle("Inform Events",false, function(s)
_G.IE = (s and true or false)
    LatestRoom.Changed:Connect(function()
        if _G.IE == true then
            local n = ChaseStart.Value - LatestRoom.Value
            if 0 < n and n < 4 then
                Notification:Notify(
    {Title = "Warning!", Description = "Event in " .. tostring(n) .. " rooms"},
    {OutlineColor = Color3.fromRGB(98, 37, 209),Time = 5, Type = "default"}
)
            end
        end
    end)

workspace.ChildAdded:Connect(function(inst)
if inst.Name == "RushMoving" and _G.IE == true then
Notification:Notify(
    {Title = "Warning!", Description = "Rush has spawned, hide!"},
    {OutlineColor = Color3.fromRGB(98, 37, 209),Time = 5, Type = "default"}
)

elseif inst.Name == "AmbushMoving" and _G.IE == true then
Notification:Notify(
    {Title = "Warning!", Description = "Ambush has spawned, hide!"},
    {OutlineColor = Color3.fromRGB(98, 37, 209),Time = 5, Type = "default"}
)

end
end)
end)

s1:Toggle("Auto Avoid Rush/Ambush [BETA]",false, function(s)
_G.Avoid = (s and true or false)
workspace.ChildAdded:Connect(function(inst)
if inst.Name == "RushMoving" and _G.Avoid == true then
Notification:Notify(
    {Title = "Warning!", Description = "Avoiding Rush. Please wait."},
    {OutlineColor = Color3.fromRGB(98, 37, 209),Time = 5, Type = "default"}
)

local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
local con = game:GetService("RunService").Heartbeat:Connect(function()
game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0))
end)

inst.Destroying:Wait()
con:Disconnect()
game.Players.LocalPlayer.Character:MoveTo(OldPos)

elseif inst.Name == "AmbushMoving" and _G.Avoid == true then
Notification:Notify(
    {Title = "Warning!", Description = "Avoiding Ambush. Please wait."},
    {OutlineColor = Color3.fromRGB(98, 37, 209),Time = 5, Type = "default"}
)

local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
local con = game:GetService("RunService").Heartbeat:Connect(function()
game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0))
end)

inst.Destroying:Wait()
con:Disconnect()
game.Players.LocalPlayer.Character:MoveTo(OldPos)

end
end)
end)

s1:Toggle("No Screech",false, function(s)
_G.NS = (s and true or false)
workspace.CurrentCamera.ChildAdded:Connect(function(child)
    if child.Name == "Screech" and _G.NS == true then
        child:Destroy()
    end
end)
end)

s1:Toggle("Instant Interact",false, function(s)
_G.II = (s and true or false)
game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
    if _G.II == true then
        fireproximityprompt(prompt)
    end
end)
end)

s1:Toggle("Auto Skip Level",false, function(s)
_G.ASL = (s and true or false)
while _G.ASL == true do wait()
    pcall(function()
            local HasKey = false
            local CurrentDoor = workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door")
            for i,v in ipairs(CurrentDoor.Parent:GetDescendants()) do
                if v.Name == "KeyObtain" then
                    HasKey = v
                end
            end
            if HasKey then
                game.Players.LocalPlayer.Character:PivotTo(CF(HasKey.Hitbox.Position))
                wait(0.3)
                fireproximityprompt(HasKey.ModulePrompt,0)
                game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                wait(0.3)
                fireproximityprompt(CurrentDoor.Lock.UnlockPrompt,0)
            end
            if LatestRoom == 50 then
                CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
            end
            game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
            wait(0.3)
            CurrentDoor.ClientOpen:FireServer()
    end)
 end
end)

s1:Button("Skip Level", function()
        pcall(function()
            local HasKey = false
            local CurrentDoor = workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door")
            for i,v in ipairs(CurrentDoor.Parent:GetDescendants()) do
                if v.Name == "KeyObtain" then
                    HasKey = v
                end
            end
            if HasKey then
                game.Players.LocalPlayer.Character:PivotTo(CF(HasKey.Hitbox.Position))
                wait(0.3)
                fireproximityprompt(HasKey.ModulePrompt,0)
                game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                wait(0.3)
                fireproximityprompt(CurrentDoor.Lock.UnlockPrompt,0)
            end
            if LatestRoom == 50 then
                CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
            end
            game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
            wait(0.3)
            CurrentDoor.ClientOpen:FireServer()
        end)
end)

s1:Button("No Jumpscares", function()
        pcall(function()
            game:GetService("ReplicatedStorage").Bricks.Jumpscare:Destroy()
        end)
  	end    
)

s1:Button("Complete breaker box minigame", function()
        game:GetService("ReplicatedStorage").Bricks.EBF:FireServer()
  	end    
)
s1:Button("Skip level 50", function()
        local CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
        game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
  	end    
)

s3:Toggle("Key Chams",false, function(s)
local function ApplyKeyChams(inst)
    wait()
    local Cham = Instance.new("Highlight")
    Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Cham.FillColor = Color3.new(0.980392, 0.670588, 0)
    Cham.FillTransparency = 0.5
    Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
    Cham.Parent = game:GetService("CoreGui")
    Cham.Adornee = inst
    Cham.Enabled = s.Value
    Cham.RobloxLocked = true
    return Cham
end

local KeyCoroutine = coroutine.create(function()
    workspace.CurrentRooms.DescendantAdded:Connect(function(inst)
        if inst.Name == "KeyObtain" then
            table.insert(KeyChams,ApplyKeyChams(inst))
        end
    end)
end)
for i,v in ipairs(workspace:GetDescendants()) do
    if v.Name == "KeyObtain" then
        table.insert(KeyChams,ApplyKeyChams(v))
    end
end
coroutine.resume(KeyCoroutine)
end)

s3:Toggle("Players ESP",false, function(s)
_G.plrESP = (s and true or false)
while _G.plrESP == true do wait()
    pcall(function()
       for i,v in pairs(game.Players:GetChildren()) do
            if not v.Character.Head:FindFirstChild("ESP") then
                local BillboardGui = Instance.new("BillboardGui")
                local TextLabel = Instance.new("TextLabel")
                BillboardGui.Parent = v.Character.Head
                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                BillboardGui.Active = true
                BillboardGui.Name = "ESP"
                BillboardGui.AlwaysOnTop = true
                BillboardGui.LightInfluence = 1.000
                BillboardGui.Size = UDim2.new(0, 50, 0, 50)
                BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundColor3 = Color3.fromRGB(102, 255, 153)
                TextLabel.BackgroundTransparency = 1.000
                TextLabel.Size = UDim2.new(0, 50, 0, 50)
                TextLabel.Font = Enum.Font.GothamBold
                TextLabel.Text = v.Name
                TextLabel.TextColor3 = Color3.fromRGB(102, 255, 153)
                TextLabel.TextScaled = true
                TextLabel.TextSize = 14.000
                TextLabel.TextStrokeTransparency = 0.000
                TextLabel.TextWrapped = true
            end
        end
    end)
end
end)

s4:Button("Crucifix", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Johnny39871/assets/main/crucifixo'))()
end)

s4:Button("Spawn Eyes (Damage)", function()
  local enableDamage = true
repenttimes = 0
local deadeyescrucifix = false
local repentcomplete = false
local currentLoadedRoom = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
local eyes = game:GetObjects("rbxassetid://11488518082")[1]
local num = math.floor(#currentLoadedRoom.Nodes:GetChildren() / 2)
eyes.CFrame = (num == 0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]).CFrame + Vector3.new(0, 7, 0)

eyes.Parent = workspace
eyes.Initiate:Play()
task.wait(0.5)
eyes.Attachment.Eyes.Enabled = true
eyes.whisper:Play()
eyes.whisper.Looped = true
function EyesHell()
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()
camShake:ShakeOnce(10,30,0.7,0.1)
ts = game:GetService("TweenService")
wait(0.2)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()
camShake:ShakeOnce(2,30,5,2)
wait(3)

eyes.Scream:Play()
ts:Create(eyes,TweenInfo.new(5),{CFrame = eyes.CFrame - Vector3.new(0,12,0)}):Play()
wait(7)
eyes:Destroy()
end
local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

local function IsVisible(part)
	local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
	local onscreen = found and vec.Z > 0
	local cfg = RaycastParams.new();
	cfg.FilterType = Enum.RaycastFilterType.Blacklist
	cfg.FilterDescendantsInstances = {part};

	local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg);
	return (onscreen and true) and ((cast and cast.Instance).Parent==game.Players.LocalPlayer.Character and true)
end

while true do
	if workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value] ~= currentLoadedRoom then
		enableDamage = false
		task.wait(0.2)
		eyes:Destroy()
	end
	if enableDamage then
		if (IsVisible(eyes)) and not game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and deadeyescrucifix == false then
		game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
		wait(0.2)
		elseif (IsVisible(eyes)) and game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes < 5 and deadeyescrucifix == false then
        print("GET THAT AWAY FROM ME")
        eyes.Repent:Play()
        eyes.Attachment.Angry.Enabled = true
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()

camShake:ShakeOnce(5,50,0.7,0.2)
        wait(0.7)
        repenttimes = repenttimes + 1
        print(repenttimes)
        eyes.Attachment.Angry.Enabled = false
        wait(0.4)
		elseif game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes == 5 and deadeyescrucifix == false then
		local hi = game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle:Clone()
        hi.Anchored = true
        hi.Parent = workspace
        hi:PivotTo(game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle.CFrame)
        game.Players.LocalPlayer.Character:FindFirstChild("Crucifix"):Destroy()
        EyesHell()
        enableDamage = false
			if hum.Health <= 0 then
				game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value =
					"Eyes"
				debug.setupvalue(
					getconnections(game:GetService("ReplicatedStorage").Bricks.DeathHint.OnClientEvent)[1].Function,
					1,
					{
						"You died to the Eyes...",
						"They don't like to be stared at.",
					}
				)
			end
		end
	end
	task.wait(0.2)
end
end)

s4:Button("Spawn Eyes (No Damage)", function()
  local enableDamage = false
repenttimes = 0
local deadeyescrucifix = false
local repentcomplete = false
local currentLoadedRoom = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
local eyes = game:GetObjects("rbxassetid://11488518082")[1]
local num = math.floor(#currentLoadedRoom.Nodes:GetChildren() / 2)
eyes.CFrame = (num == 0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]).CFrame + Vector3.new(0, 7, 0)

eyes.Parent = workspace
eyes.Initiate:Play()
task.wait(0.5)
eyes.Attachment.Eyes.Enabled = true
eyes.whisper:Play()
eyes.whisper.Looped = true
function EyesHell()
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()
camShake:ShakeOnce(10,30,0.7,0.1)
ts = game:GetService("TweenService")
wait(0.2)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()
camShake:ShakeOnce(2,30,5,2)
wait(3)

eyes.Scream:Play()
ts:Create(eyes,TweenInfo.new(5),{CFrame = eyes.CFrame - Vector3.new(0,12,0)}):Play()
wait(7)
eyes:Destroy()
end
local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

local function IsVisible(part)
	local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
	local onscreen = found and vec.Z > 0
	local cfg = RaycastParams.new();
	cfg.FilterType = Enum.RaycastFilterType.Blacklist
	cfg.FilterDescendantsInstances = {part};

	local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg);
	return (onscreen and true) and ((cast and cast.Instance).Parent==game.Players.LocalPlayer.Character and true)
end

while true do
	if workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value] ~= currentLoadedRoom then
		enableDamage = false
		task.wait(0.2)
		eyes:Destroy()
	end
	if enableDamage then
		if (IsVisible(eyes)) and not game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and deadeyescrucifix == false then
		game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
		wait(0.2)
		elseif (IsVisible(eyes)) and game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes < 5 and deadeyescrucifix == false then
        print("GET THAT AWAY FROM ME")
        eyes.Repent:Play()
        eyes.Attachment.Angry.Enabled = true
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()

camShake:ShakeOnce(5,50,0.7,0.2)
        wait(0.7)
        repenttimes = repenttimes + 1
        print(repenttimes)
        eyes.Attachment.Angry.Enabled = false
        wait(0.4)
		elseif game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes == 5 and deadeyescrucifix == false then
		local hi = game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle:Clone()
        hi.Anchored = true
        hi.Parent = workspace
        hi:PivotTo(game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle.CFrame)
        game.Players.LocalPlayer.Character:FindFirstChild("Crucifix"):Destroy()
        EyesHell()
        enableDamage = false
			if hum.Health <= 0 then
				game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value =
					"Eyes"
				debug.setupvalue(
					getconnections(game:GetService("ReplicatedStorage").Bricks.DeathHint.OnClientEvent)[1].Function,
					1,
					{
						"You died to the Eyes...",
						"They don't like to be stared at.",
					}
				)
			end
		end
	end
	task.wait(0.2)
end
end)

s4:Button("Torch (Shop)", function()

local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

Achievements.Get({
    Title = "Torch!",
    Desc = "Torch helps you in the dark.",
    Reason = "Good Luck",
    Image = "https://cdn.discordapp.com/attachments/882940450288324658/1046404183101800558/image.png",
})

local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()

local exampleTool = LoadCustomInstance("rbxassetid://3499523244")

CustomShop.CreateItem(exampleTool, {
    Title = "Torch!",
    Desc = "Give light",
    Image = "https://cdn.discordapp.com/attachments/882940450288324658/1046404183101800558/image.png",
    Price = 1,
    Stack = 1,
})
end)

local s5 = win:Tab("Credits")
s5:Label("Credits : RED_KING#3808")
s5:Button("Copy Youtube", function()
   setclipboard("https://youtube.com/@kinghub7885")
   UILib:Notification("Notification", "Copied!", "Okay")
end)
s5:Label("Discord : !vcsk0#1516")
s5:Button("Copy Youtube", function()
   setclipboard("https://www.youtube.com/@vcsk0")
   UILib:Notification("Notification", "Copied!", "Okay")
end)
