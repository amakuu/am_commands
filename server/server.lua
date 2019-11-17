RegisterCommand("ping", function(source, args, rawCommand)
    -- If the source is > 0, then that means it must be a player.
    if (source > 0) then
        playerSrc = GetPlayerFromIndex(source) -- returns the server internal id of the player
        playerName = GetPlayerName(playerSrc) -- returns the player name
        ping = GetPlayerPing(playerSrc) -- get the ping time in ms
        print("PONG! Player " .. playerName .." has a Ping of " .. ping .. "ms")
    else 
        print("Selfping!")
    end
end, false)

RegisterCommand("getPlayers", function(source, args, rawCommand)
	players = GetPlayers()
	print(players)
end, false)

RegisterCommand("pos", function(source, args, rawCommand)
    if (source > 0) then
        sourcePlayer = GetPlayerFromIndex(source) -- returns the playerSrc of the player
        playerPed = GetPlayerPed(sourcePlayer) -- returns the ped of the playerSrc
        playerPos = GetEntityCoords(playerPed) -- returns position as vector3
        print("X: " .. playerPos.x .. "  -  Y: " .. playerPos.y .. "  -  Z: " .. playerPos.z)
    else
        print("This Command needs to be put in client console.")
    end
end, false)