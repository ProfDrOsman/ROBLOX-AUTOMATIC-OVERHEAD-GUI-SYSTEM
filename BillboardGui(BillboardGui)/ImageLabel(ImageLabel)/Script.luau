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
    
    Part/BillboardGui/ImageLabel/Script
]]--
local mobileIconID_dark = "rbxassetid://128455686603359"
local mobileIconID_light = "rbxassetid://71953108442672"

local pcIconID_dark = "rbxassetid://94766473723387"
local pcIconID_light = "rbxassetid://117692038774385"

local ImageLabel = script.Parent
local character = ImageLabel.Parent.Parent.Parent
local player = game.Players:GetPlayerFromCharacter(character)

local replicatedStorage = game:GetService("ReplicatedStorage")

local events = replicatedStorage:WaitForChild("Events_OverheadGUI")
local remote = events:WaitForChild("DeviceTpye")
local ColorTheme = events:WaitForChild("ColorTheme")

remote.OnServerEvent:Connect(function(plr,deviceType)
	
	if plr ~= player then return end
	
	print("Gelen Oyuncu: " .. player.Name .. " | Gelen Cihaz: " .. tostring(deviceType))
	
	if deviceType == "Mobile" then
		
		if ColorTheme.Value == "Dark" then
			ImageLabel.Image = mobileIconID_dark
		elseif ColorTheme.Value == "Light" then
			ImageLabel.Image = mobileIconID_light
			ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
		end
		
	elseif deviceType == "PC" then
		
		if ColorTheme.Value == "Dark" then
			ImageLabel.Image = pcIconID_dark
		elseif ColorTheme.Value == "Light" then
			ImageLabel.Image = pcIconID_light
			ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
		end
		
	end
	
end)
