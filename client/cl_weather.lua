RegisterCommand("ping", function(source, args, rawCommand)
    -- If the source is > 0, then that means it must be a player.
    if (source > 0) then print("PONG!")
    else print("Selfping!")
    end
end, false --[[this command is not restricted, everyone can use this.]])

RegisterCommand("getPlayers", function(source, args, rawCommand)
    players = GetPlayers()
    print(players)
end, false)

local isHud = true

RegisterCommand("togglehud", function(source, args, rawCommand)
    if isHud == true then 
        Citizen.InvokeNative(0xD63FE3AF9FB3D53F, false)
        isHud = false
    elseif isHud == false then 
                Citizen.InvokeNative(0xD63FE3AF9FB3D53F, true)
        isHud = true
    end
end, false)

RegisterCommand("time", function(source, args, rawCommand)
    if args[1] == nil then
        print("Please set the hour 0-23")
    else
        if args[2] == nil then
            Citizen.InvokeNative(0x669E223E64B1903C, tonumber(args[1]), 00, 0, 0, 0)
            print("Time set to " .. args[1])
        else
    Citizen.InvokeNative(0x669E223E64B1903C, tonumber(args[1]), tonumber(args[2]), 0, 0, 0)
    print("Time set to " .. args[1] .. " : " .. args[2])
        end
    end
end, false)

RegisterCommand("timecycle", function(source, args, rawCommand)
    if args[1] == nil then
    print("Please set the specific name for timecycle")
    else
    Citizen.InvokeNative(0x669E223E64B1903C, args[1])
    print("Timecycle setted to" .. args[1])
    end
end, false)


RegisterCommand("weapon", function(source, args, rawCommand)
    if args[1] == nil then
    print("Please set the specific name for weapon")
    else
    local ped = Citizen.InvokeNative(0x275F255ED201B937, 0);
    Citizen.InvokeNative(0xB282DC6EBD803C75, ped, GetHashKey(args[1]), 500, true, 0);
    end
end, false)

RegisterCommand("prints", function(source, args, rawCommand)
    print (Citizen.InvokeNative(0x275F255ED201B937, 0))
end, false)

RegisterCommand("map", function(source, args, rawCommand)
    Citizen.InvokeNative(0x4B8F743A4A6D2FF8, true)
end, false)


--Citizen.CreateThread(function()
  --  while true do
       -- Citizen.InvokeNative(0x4B8F743A4A6D2FF8, true); -- POKAZUJE CAŁA MAPE
    --end
  --end)


    
