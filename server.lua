local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","Dolphin_SurvivalUI")

RegisterServerEvent("dpems:call")
AddEventHandler("dpems:call",function()
    local source = source
    vRPclient.getPosition(source, {}, function(x,y,z)
        vRP.sendServiceAlert({source,"*[1]🚒119 긴급",x,y,z,"살려주세요!"})
    end)
end)