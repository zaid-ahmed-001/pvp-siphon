RegisterServerEvent('pvp-siphon:server:event')
AddEventHandler('pvp-siphon:server:event', function(killer, reason)
    local src = source
    if Config.DevPrints then 
        print(GetPlayerName(killer), "Killer Name")
    end 
    if killer then 
        TriggerClientEvent("pvp-siphon:addsiphon", killer, killer) 
        if Config.DevPrints then 
            print("Server Event Triggered")
        end 
    end 
end)
