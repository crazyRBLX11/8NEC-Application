-- [ Note for Reader: This works alongside 2. Locker.lua, this was written by me for the 308th Infantry Battalion's Fort Marcel ] --

--!strict
-- Written by @crazyattaker1.
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage.Remotes

-- Constants
local GroupID = 35860030

local Root = script.Parent

local ProximityPromptHolder = Root.ProximityPrompt
local ProximityPrompt = ProximityPromptHolder.ProximityPrompt

local OpenLocker = ProximityPrompt.Triggered:Connect(function(player: Player)
	if player:IsInGroup(GroupID) then	
		local Character = workspace:WaitForChild(player.Name)
		local PlayerUI = player.PlayerGui
		local LockerUI = PlayerUI.LockerUI
		local Background = LockerUI.Background

		Background.Visible = true
		print("Player "..player.Name.." is in group "..GroupID.." and the locker GUI is visible.")
	end
end)
