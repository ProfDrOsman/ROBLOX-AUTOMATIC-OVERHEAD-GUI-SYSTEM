--[[  __         __          __________
     /  \       /  \        / ________/     
	/ /\ \     / /\ \      / /_______                             
   / /  \ \   / /  \ \    /_______  /  
  /	/    \ \_/ /    \ \  ________/ /    
 / /      \___/      \ \/_________/         
 🍊 MANDALİNA STUDIO © 2025 By ProfDrOsman 🍊
           [Overhead GUI] 
    github.com/ProfDrOsman
    github.com/MandalinaStudio
    
    Part/AdminList
]]--
local players = game:GetService("Players")
local tweenService = game:GetService("TweenService")

local function SetAdmin(username)
	players.PlayerAdded:Connect(function(player)
		
		if player.Name ~= username then return end
		
		player.CharacterAdded:Connect(function(character)
			task.wait(0.1)
			
			local head = character:WaitForChild("Head")
			local billboardGui = head:WaitForChild("BillboardGui")
			local rankLabel = billboardGui:WaitForChild("Rank")
			
			rankLabel.Text = "Admin"
			rankLabel.TextColor3 = Color3.fromRGB(89, 255, 0)
			
		end)
		
	end)
end

local function SetMod(username)
	players.PlayerAdded:Connect(function(player)

		if player.Name ~= username then return end

		player.CharacterAdded:Connect(function(character)
			task.wait(0.1)

			local head = character:WaitForChild("Head")
			local billboardGui = head:WaitForChild("BillboardGui")
			local rankLabel = billboardGui:WaitForChild("Rank")

			rankLabel.Text = "Moderator"
			rankLabel.TextColor3 = Color3.fromRGB(255, 0, 0)

		end)

	end)
end

local function SetOwner(username)
	players.PlayerAdded:Connect(function(player)

		if player.Name ~= username then return end

		player.CharacterAdded:Connect(function(character)
			task.wait(0.1)

			local head = character:WaitForChild("Head")
			local billboardGui = head:WaitForChild("BillboardGui")
			local rankLabel = billboardGui:WaitForChild("Rank")

			rankLabel.Text = "OWNER"
			rankLabel.TextColor3 = Color3.fromRGB(167, 0, 179)
			
			local tween = tweenService:Create(
				rankLabel, 
				TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut,-1, true, 10), 
				{TextColor3 = Color3.fromRGB(0, 0, 0)}
			)
			
			local tween2 = tweenService:Create(
				rankLabel, 
				TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut,-1, true, 10), 
				{TextStrokeColor3 = Color3.fromRGB(255, 255, 255)}
			)

			tween:Play()
			--task.wait(1)
			tween2:Play()
			
		end)

	end)
end

local function SetColorTheme(string)
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local Events = ReplicatedStorage:WaitForChild("Events_OverheadGUI")
	local ColorTheme = Events:WaitForChild("ColorTheme")
	
	ColorTheme.Value = string
end

SetColorTheme("Dark")
SetOwner("ProfDrOsman")