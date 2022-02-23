MODS = {
    [2578531818] = true; -- dylann
    [3201027467] = true; -- dimag 
    [243829179] = true; -- david
    [62639400] = true; 
    [1145907268] = true; 
    [1241129792] = true; 
    [200706342] = true; --
    [3283433201] = true; -- 
    [2448098057] = true; --  
    [2902543989] = true; --  
    [3233982828] = true; --  
    [2514765680] = true; -- 
    [2061724124] = true; --  
    [2387424972] = true; -- 
    [955623293] = true; --  
    [955623293] = true; -- 
    [1521003766] = true; --  
    [3294760376] = true; -- 
    [3294760376] = true; --  
    [3248505437] = true; -- 
    [2527175897] = true; --  
    [2527175897] = true; -- 
    [2926655803] = true; --  
    [2392037878] = true; -- 
    [1989016662] = true; --  
    [482888301] = true; -- 
    [2061724124] = true; --  
    [3209221189] = true; --  
    [1333316431] = true; -- 
    [1989016662] = true; --  
    [482888301] = true; -- 
    [2061724124] = true; --  
}
}

ADMIN = {
    [2578531818] = true; -- dylann
    [3201027467] = true; -- dimag
    [243829179] = true; -- david
}

--// Don't mess with anything below this
function initiateNames()
	game.Players.LocalPlayer.Character.UpperTorso:FindFirstChild('OriginalSize'):Destroy()
	for _,v in pairs(game:GetService('Players'):GetPlayers()) do
		if v.Character then
			if not v.Character.UpperTorso:FindFirstChild('OriginalSize') then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
			end
			if table.find(MODS, v.UserId) then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
			end
			if table.find(ADMIN, v.UserId) then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
			end
		end
	end
end

local successful, errored = pcall(initiateNames)
return MODS
