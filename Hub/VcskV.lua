if game.PlaceId == 8146731988 then

loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/VcskV/main/Games/UltraPowerTycoon/Script", true))()

else

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Notification",
	Text = "Game Not Supported!",
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 10;
end
