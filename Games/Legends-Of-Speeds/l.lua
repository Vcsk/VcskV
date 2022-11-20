local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local Window = Library:NewWindow("Legends Of Speed ⚡")

local s1 = Window:NewSection("Auto Farm")
local s2 = Window:NewSection("Auto Open Crystal")
local s3 = Window:NewSection("Teleport")
local s4 = Window:NewSection("Misc")

s1:CreateToggle("Auto Farm Orbs", function(s)
_G.afo = (s and true or false)
	wait()
	while _G.afo == true do
		wait()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/VcskV/main/SC/RedOrbs.lua", true))()
		end
end)

s1:CreateToggle("Auto Farm Gems", function(s)
_G.afg = (s and true or false)
	wait()
	while _G.afg == true do
		wait()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/VcskV/main/SC/Gems.lua", true))()
		end
end)

s1:CreateToggle("Auto Farm Hoops", function(s)
_G.afh = (s and true or false)
	wait()
	while _G.afh == true do
		wait()
    local children = workspace.Hoops:GetChildren()
    for i, child in ipairs(children) do
        if child.Name == "Hoop" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
        end
        end
end)

s1:CreateToggle("Auto Rebirth", function(s)
_G.ar = (s and true or false)
	wait()
	while _G.ar == true do
		wait()
		game.ReplicatedStorage.rEvents.rebirthEvent:FireServer("rebirthRequest")
		end
end)

s2:CreateToggle("Electro Legends Crystal", function(s)
_G.elc = (s and true or false)
    wait()
    while _G.elc == true do
    wait()
    game.ReplicatedStorage.rEvents.openCrystalRemote:InvokeServer("openCrystal", "Electro Legends Crystal")
    end
end)

s2:CreateToggle("Blue Crystal", function(s)
_G.bc = (s and true or false)
	wait()
	while _G.bc == true do
		wait()
		game.ReplicatedStorage.rEvents.openCrystalRemote:InvokeServer("openCrystal", "Blue Crystal")
		end
end)

s2:CreateToggle("Inferno Crystal", function(s)
_G.ic = (s and true or false)
    wait()
    while _G.ic == true do
    wait()
    game.ReplicatedStorage.rEvents.openCrystalRemote:InvokeServer("openCrystal", "Inferno Crystal")
    end
end)

s2:CreateToggle("Lava Crystal", function(s)
_G.lc = (s and true or false)
    wait()
    while _G.lc == true do
    wait()
    game.ReplicatedStorage.rEvents.openCrystalRemote:InvokeServer("openCrystal", "Lava Crystal")
    end
end)

s2:CreateToggle("Lightning Crystal", function(s)
_G.lnc = (s and true or false)
    wait()
    while _G.lnc == true do
    wait()
    game.ReplicatedStorage.rEvents.openCrystalRemote:InvokeServer("openCrystal", "Lightning Crystal")
    end
end)

s2:CreateToggle("Purple Crystal", function(s)
_G.pc = (s and true or false)
    wait()
    while _G.pc == true do
    wait()
    game.ReplicatedStorage.rEvents.openCrystalRemote:InvokeServer("openCrystal", "Purple Crystal")
    end
end)

s2:CreateToggle("Red Crystal", function(s)
_G.rc = (s and true or false)
    wait()
    while _G.rc == true do
    wait()
    game.ReplicatedStorage.rEvents.openCrystalRemote:InvokeServer("openCrystal", "Red Crystal")
    end
end)

s2:CreateToggle("Snow Crystal", function(s)
    _G.sc = (s and true or false)
    wait()
    while _G.sc == true do
    wait()
    game.ReplicatedStorage.rEvents.openCrystalRemote:InvokeServer("openCrystal", "Snow Crystal")
    end
end)

s2:CreateToggle("Yellow Crystal", function(s)
    _G.yc = (s and true or false)
    wait()
    while _G.yc == true do
    wait()
    game.ReplicatedStorage.rEvents.openCrystalRemote:InvokeServer("openCrystal", "Yellow Crystal")
    end
end)

s3:CreateButton("City", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-579.267395, 4.09292412, 419.106873, 0.997277737, 2.59245088e-08, -0.0737367794, -2.43303866e-08, 1, 2.25173533e-08, 0.0737367794, -2.06620108e-08, 0.997277737)
    Notification:Notify(
    {Title = "Notification", Description = "Teleported to City!"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 1.5, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)
end)

s3:CreateButton("Snow City", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-868.00592, 4.14292431, 2165.98877, 0.589948952, 4.34010445e-08, 0.807440579, 3.9863707e-08, 1, -8.28774276e-08, -0.807440579, 8.10810192e-08, 0.589948952)
    Notification:Notify(
    {Title = "Notification", Description = "Teleported to Snow City!"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 1.5, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)
end)

s3:CreateButton("Magma City", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1629.21082, 4.19293308, 4331.21924, -0.0185697023, 6.55761312e-08, 0.999827564, 6.19225204e-08, 1, -6.44373586e-08, -0.999827564, 6.07152586e-08, -0.0185697023)
    Notification:Notify(
    {Title = "Notification", Description = "Teleported to Magma City!"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 1.5, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)
end)

s3:CreateButton("Legends Highway", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3715.11426, 71.6728516, 5592.71973, 0.0381140336, -6.22783469e-09, 0.999273419, 9.0136993e-08, 1, 2.79438095e-09, -0.999273419, 8.99649919e-08, 0.0381140336)
    Notification:Notify(
    {Title = "Notification", Description = "Teleported to Legends Highway!"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 1.5, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)
end)

s4:CreateButton("Anti AFK", function()
Notification:Notify(
    {Title = "Notification", Description = "Anti AFK has been executed!"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 3, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)
local GC = getconnections or get_signal_cons
if GC then
    for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
else
    Notification:Notify(
    {Title = "ERROR", Description = "You're Executer is too bad to execute this script!"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 3, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end
end)

s4:CreateButton("FPS Booster", function()
Notification:Notify(
    {Title = "Notification", Description = "FPS Booster has been executed!"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 3, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/VcskV/main/Scripts/FPSBooster.lua", true))()
end)
