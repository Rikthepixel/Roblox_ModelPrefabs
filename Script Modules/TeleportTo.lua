local TeleportTo = {}

--
-- Player to Room
--

--Teleports Player to a different targer room
function  TeleportTo.Room(Player, RoomID)
	game:GetService("TeleportService"):Teleport(RoomID, Player) --Actual Teleportation part
end


--
-- Player to Spawnpad
--

--Teleports Player to the target Spawnpad
function TeleportTo.Spawn(PlaceID, SpawnName, Player)
	game:GetService("TeleportService"):TeleportToSpawnByName(PlaceID, SpawnName, Player) --Actual Teleportation part
end


--
-- Player to Object
--

--Teleports Player to the target Object
function TeleportTo.Object(Player, TargetObject)
	local Teleportlocation = TargetObject.Position
	Player.HumanoidRootPart.CFrame = CFrame.new(Teleportlocation) --Actual Teleportation part
end

--Teleports Player to the target Object with an applied vector3 offset
function TeleportTo.Object_Offset(Player, TargetObject, Offset)
	local Teleportlocation = TargetObject.Position
	Player.HumanoidRootPart.CFrame = CFrame.new(Teleportlocation) --Actual Teleportation part
end


--
-- Player to Player
--

--Teleports Player to the target player
function TeleportTo.Player(Player, TargetPlayer)
	local humanoidRootPart = TargetPlayer.Character:WaitForChild("HumanoidRootPart")
	local Teleportlocation = humanoidRootPart.Position	
	Player.HumanoidRootPart.CFrame = CFrame.new(Teleportlocation) --Actual Teleportation part
end

--Teleports Player to the target player with an applied vector3 offset
function TeleportTo.Player_Offset(Player, TargetPlayer, Offset)
	local humanoidRootPart = TargetPlayer.Character:WaitForChild("HumanoidRootPart")
	local Teleportlocation = humanoidRootPart.Position
	Player.HumanoidRootPart.CFrame = CFrame.new(Teleportlocation) + Offset --Actual Teleportation part
end

return TeleportTo
