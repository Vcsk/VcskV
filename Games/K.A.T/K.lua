local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local Window = Library:NewWindow("K.A.T")

local s1 = Window:NewSection("Main")

s1:CreateButton("Aimbot", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/VcskV/main/Games/K.A.T/Aimbot.lua", true))()
game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "Notification",
Text = "Aimbot Executed!",
Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 2;
end)

s1:CreateButton("ESP Box", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/VcskV/main/Scripts/Universal-Box-ESP.lua", true))()
game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "Notification",
Text = "ESP Box Executed!",
Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 2;
end)

s1:Button("Hitbox", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/VcskV/main/Scripts/Hitbox.lua", true))()
game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "Notification",
Text = "Hitbox Executed!",
Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 2;
end)
