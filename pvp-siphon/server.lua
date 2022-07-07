RegisterServerEvent('pvp-siphon:server:event')
AddEventHandler('pvp-siphon:server:event', function(killer, reason)
    local src = source
    if killer then 
        TriggerClientEvent("pvp-siphon:addsiphon", killer, killer) 
    end 
end)
