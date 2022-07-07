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
    TriggerServerEvent('pvp-siphon:server:event', killer)
end)

AddEventHandler("pvp-siphon:addsiphon")
RegisterNetEvent("pvp-siphon:addsiphon", function(killer)
	siphon()	
end)
