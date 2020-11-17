local TeleportTo = {}

function  TeleportTo.Room(Player)
	local Teleportlocation = 5964561180	--Room id
	
	game:GetService("TeleportService"):Teleport(Teleportlocation, Player)
	
end

function TeleportTo.Object(Player)
	local Teleportlocation
end

function TeleportTo.Player(Player, TagetPlayer)
	local Teleportlocation
end

return TeleportTo
