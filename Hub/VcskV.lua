if game.PlaceId == 8146731988 then

loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/VcskV/main/Games/UltraPowerTycoon/Script", true))()

elseif game.PlaceId == 286090429 then

loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/VcskV/main/Games/Arsenal/OPArsenal", true))()

elseif game.PlaceId == 6872265039 then

loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/VcskV/main/Games/Bedwars/OPBedwars", true))()

elseif game.PlaceId == 4924922222 then

loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/VcskV/main/Games/Brookhaven/p.lua", true))()

elseif game.PlaceId == 621129760 then

loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/VcskV/main/Games/K.A.T/K.lua", true))()

else

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Notification",
	Text = "Game Not Supported!",
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 10;
end
