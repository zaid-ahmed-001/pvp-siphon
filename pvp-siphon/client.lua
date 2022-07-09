function siphon()
    local playerped = PlayerPedId()
    local armour = GetPedArmour(playerped)
	local health = GetEntityHealth(playerped)
    if Config.RandomSiphon then 
        SetPedArmour(playerped, armour + Config.RandomArmorRange) 
        SetEntityHealth(playerped, health + Config.RandomHealthRange)
    else 
        SetPedArmour(playerped, armour + Config.ArmorAmount)
        SetEntityHealth(playerped, health + Config.HealthAmount)			
    end 							
end 

AddEventHandler('baseevents:onPlayerKilled', function(killer)
    if siphonenabled then 
        TriggerServerEvent('pvp-siphon:server:event', killer)
    end 
end)

AddEventHandler("pvp-siphon:addsiphon")
RegisterNetEvent("pvp-siphon:addsiphon", function(killer)
	siphon()	
end)

local insidesiphonzone1 = false
Citizen.CreateThread(function()
    playerped = PlayerPedId()
    if Config.UsingPolyZones then 
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
        siphonenabled = true 
    end 
end)  
