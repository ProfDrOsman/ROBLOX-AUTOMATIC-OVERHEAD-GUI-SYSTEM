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
    
    Part/Script
]]--

local players = game:GetService("Players")
local replicatedStorage = game:GetService("ReplicatedStorage")

local part = script.Parent
local billboardGui = part.BillboardGui
local LocalScript = part:WaitForChild("LocalScript")
local events = part:WaitForChild("Events_OverheadGUI")

events.Parent = replicatedStorage
billboardGui.Enabled = false
part.Transparency = 1
part.CanCollide = false

players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		
		local humanoid = character:WaitForChild("Humanoid")
		humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
		
		local head = character:WaitForChild("Head")
		
		local GuiClone = billboardGui:Clone()
		local LocalScriptClone = LocalScript:Clone()
				
		local guiscript_DisplayName = GuiClone.DisplayName.Script
		local guiscript_UserName = GuiClone.UserName.Script
		local guiscript_Rank = GuiClone.Rank.Script
		local guiscript_img = GuiClone.ImageLabel.Script
		
		GuiClone.Enabled = true
		guiscript_DisplayName.Enabled = true
		guiscript_UserName.Enabled = true
		guiscript_Rank.Enabled = true
		guiscript_img.Enabled = true
		GuiClone.Parent = head
		LocalScriptClone.Enabled = true
		LocalScriptClone.Parent = character
		
	end)
	
end)
