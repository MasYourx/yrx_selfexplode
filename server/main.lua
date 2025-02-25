ESX = exports["es_extended"]:getSharedObject()

RegisterCommand("ledak", function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        local playerGroup = xPlayer.getGroup()
        if playerGroup == "admin" or playerGroup == "superadmin" then
            TriggerClientEvent("yrx_selfExplode:explode", source)
        else
            TriggerClientEvent("ox_lib:notify", source, {
                title = "Self Explode",
                description = "Access Denied!",
                type = "error",
                duration = 5000
            })
        end
    end
end, false)
