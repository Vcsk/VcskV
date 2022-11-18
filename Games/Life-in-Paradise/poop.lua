local plr = game:GetService("Players").LocalPlayer
local chr = plr.Character
while wait() do
workspace.Events.Morph.Player:FireServer("Turkey")
if chr:FindFirstChild"IsaMorph" then
    chr.IsaMorph:Destroy()
end
for i,v in pairs(chr.Torso:GetChildren()) do
    if v:FindFirstChildWhichIsA"SpecialMesh" then
        v:FindFirstChildWhichIsA"SpecialMesh":Destroy()
    end
    if v:IsA"BasePart" and v.Name == "Part" then
        v:BreakJoints()
    end
end
wait()
end
