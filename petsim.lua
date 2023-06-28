loadstring(game:HttpGet("https://raw.githubusercontent.com/Rafacasari/roblox-scripts/main/psx.lua", true))()
local Library = require(game:GetService("ReplicatedStorage").Library)
wait(2)
spawn(function()
    while wait(1) do
	Orange = tonumber(game.Players.localPlayer.PlayerGui.Main.Boosts.Orange.TimeLeft.Text:split("x")[2])
    	pcall(function()
			if Library.WorldCmds.Get() ~= "Fantasy" and Library.WorldCmds.Get() ~= "Spawn" then
				if Orange >= 100 and Library.WorldCmds.Get() ~= "Fantasy" and Library.WorldCmds.Get() ~= "Spawn" then
				    if Library.WorldCmds.Get() ~= "Diamond Mine" then
					wait(5)
				        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9020.01953125, 59, 2508.555908203125)
				    end
				elseif Orange <= 100 and Library.WorldCmds.Get() ~= "Fantasy" and Library.WorldCmds.Get() ~= "Spawn" then
				    if Library.WorldCmds.Get() ~= "Pixel" then
					wait(5)
				        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3897, -16, 2440)
				    end
				end
			--game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3100, 96, 137)
			elseif Library.WorldCmds.Get() == "Fantasy" then
		                wait(5)
			        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3100, 96, 137)
			end
	end)
    end
end)
