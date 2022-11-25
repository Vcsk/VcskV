local plr = game.Players.LocalPlayer
local m1 = "M9"
local m2 = "Remington 870"
local m3 = "AK-47"

plr.Chatted:connect(function(cht)
	if cht:match(":admin") then
		loadstring(game:HttpGet(("https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife"),true))()
	elseif cht:match(":iy") then
	    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	elseif cht:match(":gun") then
	    workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
	    workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
	    workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
	elseif cht:match(":mgun") then
	    local module = nil
	    
	    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(m1) then
	        module = require(game:GetService("Players").LocalPlayer.Backpack[m1].GunStates)
	    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(m1) then
            module = require(game:GetService("Players").LocalPlayer.Character[m1].GunStates)
	    end
        if module ~= nil then
            module["Damage"] = math.huge
            module["MaxAmmo"] = math.huge
            module["CurrentAmmo"] = math.huge
            module["StoredAmmo"] = math.huge
            module["FireRate"] = 0.00001
            module["AutoFire"] = true
            module["Range"] = math.huge
            module["Spreed"] = 0
            module["ReloadTime"] = 0.00001
            module["Bullets"] = 30
        end
	end
end)

plr.Chatted:connect(function(cht)
	if cht:match(":mgun") then
	    local module = nil
	    
	    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(m1) then
	        module = require(game:GetService("Players").LocalPlayer.Backpack[m2].GunStates)
	    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(m2) then
            module = require(game:GetService("Players").LocalPlayer.Character[m2].GunStates)
	    end
        if module ~= nil then
            module["Damage"] = math.huge
            module["MaxAmmo"] = math.huge
            module["CurrentAmmo"] = math.huge
            module["StoredAmmo"] = math.huge
            module["FireRate"] = 0.00001
            module["AutoFire"] = true
            module["Range"] = math.huge
            module["Spreed"] = 0
            module["ReloadTime"] = 0.00001
            module["Bullets"] = 30
        end
	end
end)

plr.Chatted:connect(function(cht)
	if cht:match(":mgun") then
	    local module = nil
	    
	    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(m1) then
	        module = require(game:GetService("Players").LocalPlayer.Backpack[m3].GunStates)
	    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(m3) then
            module = require(game:GetService("Players").LocalPlayer.Character[m3].GunStates)
	    end
        if module ~= nil then
            module["Damage"] = math.huge
            module["MaxAmmo"] = math.huge
            module["CurrentAmmo"] = math.huge
            module["StoredAmmo"] = math.huge
            module["FireRate"] = 0.00001
            module["AutoFire"] = true
            module["Range"] = math.huge
            module["Spreed"] = 0
            module["ReloadTime"] = 0.00001
            module["Bullets"] = 30
        end
	end
end)
