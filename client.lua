vRP = Proxy.getInterface("vRP")

local commas = false
Citizen.CreateThread(
  function()
    while true do
        Citizen.Wait(1000)
        local ped = GetPlayerPed(-1)
        local isComa = vRP.isInComa({})
        if isComa then
        if not commas then
            SendNUIMessage({             
                type = "deathscreen",
                setDisplay = true
            })
            SetNuiFocus(true,true)
            commas = true
        end
        else
        if commas then
            SendNUIMessage({
                type = "deathscreen",
                setDisplay = false
            })
            SetNuiFocus(false, false)
            commas = false
        end
        end
    end
end)

RegisterNUICallback('emscall', function()
    TriggerServerEvent("dpems:call")
    close()
end)