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
    
    Part/LocalScript
]]--

local replicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")


local character = script.Parent
local head = character:WaitForChild("Head")
local billboardGui = head:WaitForChild("BillboardGui")


RunService.RenderStepped:Connect(function()
	if head.LocalTransparencyModifier > 0.5 then
		billboardGui.Enabled = false
	else
		billboardGui.Enabled = true
	end
end)

local events = replicatedStorage:WaitForChild("Events_OverheadGUI")
local remote = events:WaitForChild("DeviceTpye")

local player = Players.LocalPlayer

userInputService = game:GetService("UserInputService")

local function getPlatform()
	if userInputService.TouchEnabled then
		return "Mobile"
	elseif userInputService.KeyboardEnabled then
		return "PC"
	elseif userInputService.GamepadEnabled then
		return "Console"
	end
end

remote:FireServer(getPlatform())