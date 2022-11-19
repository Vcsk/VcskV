local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local Window = Library:NewWindow("DOORS Race Clicker")

--// Value \\--
_G.AutoFarm = false

--// Function \\--

function AutoFarm()
    while _G.AutoFarm == true do
        local tp_table = {
            tp1 = Vector3.new(-843379.312, -20.670433, 442.001587, -0.111947171, 6.17878513e-08, 0.993714154, -4.33211333e-09, 1, -6.26667358e-08, -0.993714154, -1.13202461e-08, -0.111947171),
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(0.01,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function tween_tp(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                 a.Completed:Wait()
            end
        end
        
        tween_tp(tp_table.tp1)
wait()
end
end

--//\\--

local s1 = Window:NewSection("Main")

s1:CreateTextbox("FE Speed Changer", function(v)
local ohInstance1 = game:GetService("Players").LocalPlayer.leaderstats[utf8.char(9889, 32, 83, 112, 101, 101, 100)]
local ohNumber2 = (v)

game:GetService("ReplicatedStorage").changeValue:FireServer(ohInstance1, ohNumber2)
end)

s1:CreateToggle("AutoClick", function(v)
game:GetService("ReplicatedStorage").Clickspeed:InvokeServer()
end)

s1:CreateToggle("Auto Farm", function(v)
_G.AutoFarm = v
AutoFarm()
end)
