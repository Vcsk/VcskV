local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local Window = Library:NewWindow("K.A.T")
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

local s1 = Window:NewSection("Main")

s1:CreateButton("Aimbot", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/VcskV/main/Games/K.A.T/Aimbot.lua", true))()
Notification:Notify(
    {Title = "Notification", Description = "Executed Aimbot!"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 2, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)
end)

s1:CreateButton("ESP Box", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/VcskV/main/Scripts/Universal-Box-ESP.lua", true))()
Notification:Notify(
    {Title = "Notification", Description = "Executed ESP Box!"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 2, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)
end)

s1:CreateButton("Hitbox", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/VcskV/main/Scripts/Hitbox.lua", true))()
Notification:Notify(
    {Title = "Notification", Description = "Executed Hitbox!"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 2, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)
end)
