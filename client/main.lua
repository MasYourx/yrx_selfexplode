ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        ESX = exports['es_extended']:getSharedObject()
        Citizen.Wait(0)
    end
end)

RegisterNetEvent("yrx_selfExplode:explode")
AddEventHandler("yrx_selfExplode:explode", function()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)

    AddExplosion(coords.x, coords.y, coords.z, 7, 10.0, true, false, 1.0)

    SetEntityHealth(playerPed, 0)
end)