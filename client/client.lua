local isHud = true
local player = Citizen.InvokeNative(0x217E9DC48139933D)

RegisterCommand("togglehud", function(source, args, rawCommand)
    if isHud == true then 
        Citizen.InvokeNative(0xD63FE3AF9FB3D53F, false)
        isHud = false
    elseif isHud == false then 
                Citizen.InvokeNative(0xD63FE3AF9FB3D53F, true)
        isHud = true
    end
end, false)

RegisterCommand("time", function(source, args, rawCommand) -- SETS THE TIME
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

RegisterCommand("timecycle", function(source, args, rawCommand) -- SET THE TIMECYCLE
    if args[1] == nil then
    print("Please set the specific name for timecycle")
    else
    Citizen.InvokeNative(0x669E223E64B1903C, args[1])
    print("Timecycle setted to" .. args[1])
    end
end, false)


RegisterCommand("weapon", function(source, args, rawCommand) -- GIVES A WEAPON
    if args[1] == nil then
    print("Please set the specific name for weapon")
    else
    local ped = Citizen.InvokeNative(0x275F255ED201B937, 0);
    Citizen.InvokeNative(0xB282DC6EBD803C75, ped, GetHashKey(args[1]), 500, true, 0);
    end
end, false)

RegisterCommand("prints", function(source, args, rawCommand) -- SOME DEV PRINTS
    print (Citizen.InvokeNative(0x275F255ED201B937, source)) -- prints ped
    print (Citizen.InvokeNative(0xBFFB35986CAAE58C, source)) -- IS_PLAYER_PLAYING
    print (source)
end, false)

RegisterCommand("map", function(source, args, rawCommand) -- REVEAL MAP
    Citizen.InvokeNative(0x4B8F743A4A6D2FF8, true)
end, false)

RegisterCommand("ped", function(source, args, rawCommand) -- TRYING TO FIGURE IT OUT NOT WORKING
    if args[1] == nil then
    print("Please set the specific name for ped")
    else
    Citizen.InvokeNative(0xED40380076A31506, source, GetHashKey(args[1]), false)
    Citizen.InvokeNative(0x283978A15512B2FE, 0x096275889B8E0EE0, true) -- IDK WHAT THIS
    Citizen.InvokeNative(0x4AD96EF928BD4F9A, GetHashKey(args[1])) -- SET_MODEL_AS_NO_LONGER_NEEDED
    end
end, false)


--Citizen.CreateThread(function()
  --  while true do
       -- Citizen.InvokeNative(0x4B8F743A4A6D2FF8, true); -- POKAZUJE CAŁA MAPE
    --end
  --end)
    
