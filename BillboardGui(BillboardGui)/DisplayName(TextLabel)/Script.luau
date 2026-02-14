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
    
    Part/BillboardGui/DisplayName/Script
]]--
local head = script.Parent.Parent.Parent
local chr = head.Parent
local plr = game.Players:GetPlayerFromCharacter(chr)
local text = script.Parent

text.Text = plr.DisplayName

local replicatedStorage = game:GetService("ReplicatedStorage")
local events = replicatedStorage:WaitForChild("Events_OverheadGUI")
local ColorTheme = events:WaitForChild("ColorTheme")

if ColorTheme.Value == "Dark" then
	text.TextColor3 = Color3.fromRGB(0, 0, 0)
elseif ColorTheme.Value == "Light" then
	text.TextColor3 = Color3.fromRGB(255, 255, 255)
end
