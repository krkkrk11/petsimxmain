loadstring(game:HttpGet("https://raw.githubusercontent.com/Rafacasari/roblox-scripts/main/psx.lua", true))()
local Library = require(game:GetService("ReplicatedStorage").Library)
local Orange = tonumber(game.Players.localPlayer.PlayerGui.Main.Boosts.Orange.TimeLeft.Text:split("x")[2])
wait(30)
spawn(function()
    while wait(1) do
    	pcall(function()
    		print(Library.WorldCmds.Get())
			if Library.WorldCmds.Get() ~= "Fantasy" and Library.WorldCmds.Get() ~= "Spawn" then
				if Orange >= 100 and Library.WorldCmds.Get() ~= "Fantasy" and Library.WorldCmds.Get() ~= "Spawn" then
				    if Library.WorldCmds.Get() ~= "Diamond Mine" then
				        if not Library.WorldCmds.Load("Diamond Mine") then return end
				    end
				    wait(2)
				    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9020.01953125, 40, 2508.555908203125)
				elseif Orange <= 100 and Library.WorldCmds.Get() ~= "Fantasy" and Library.WorldCmds.Get() ~= "Spawn" then
				    if Library.WorldCmds.Get() ~= "Pixel" then
				        if not Library.WorldCmds.Load("Pixel") then return end
				    end
				    wait(2)
				    repeat wait()
				    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3897, -16, 2440)
				    until Orange == 200
				end
			--game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3100, 96, 137)
			elseif Library.WorldCmds.Get() == "Fantasy" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3100, 96, 137)
			end
	   	end)
    end
end)
