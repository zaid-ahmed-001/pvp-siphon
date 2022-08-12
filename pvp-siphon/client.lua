AddEventHandler('baseevents:onPlayerKilled', function(killer)
    if Config.DevPrints then 
        print("Player Killed")
    end 
    if siphonenabled then 
        if Config.DevPrints then 
            print("Client Event Triggered")
        end 
        TriggerServerEvent('pvp-siphon:server:event', killer)
    end 
end)

AddEventHandler("pvp-siphon:addsiphon")
RegisterNetEvent("pvp-siphon:addsiphon", function(killer)
    local playerped = PlayerPedId()
    local armour = GetPedArmour(playerped)
	local health = GetEntityHealth(playerped)
    if Config.RandomSiphon then 
        SetPedArmour(playerped, armour + Config.RandomArmorRange) 
        SetEntityHealth(playerped, health + Config.RandomHealthRange)
        if Config.DevPrints then 
            print("Siphon Added")
        end 
    else 
        if Config.DevPrints then 
            print("Siphon Added")
        end 
        SetPedArmour(playerped, armour + Config.ArmorAmount)
        SetEntityHealth(playerped, health + Config.HealthAmount)			
    end 	
end)

local insidesiphonzone1 = false
Citizen.CreateThread(function()
    playerped = PlayerPedId()
    if Config.UsingPolyZones then 
        if Config.DevPrints then 
            print("Using PolyZone")
        end 
        while true do
            coord = GetEntityCoords(playerped)
            insidesiphonzone1 = Config.siphonzone1:isPointInside(coord)
            if insidesiphonzone1 then 
                siphonenabled = true 
            else 
                siphonenabled = false 
            end 
        Citizen.Wait(500)
        end
    else 
        if Config.DevPrints then 
            print("Not Using PolyZone")
        end 
        siphonenabled = true 
    end 
end)  
