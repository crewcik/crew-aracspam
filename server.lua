local market = createMarker(2131.88037, -1150.37109, 23.16541, "cylinder", 2)

aracTablo = {}

function aracVer(game)
    if isElement(aracTablo[game]) then
        destroyElement(aracTablo[game])
    end
    local x, y, z = getElementPosition(game)
    aracTablo[game] = createVehicle(436, 2147.51562, -1142.87805, 25.00839)
    warpPedIntoVehicle(game, aracTablo[game])
    outputChatBox("[CREW]:#ffffff Aracı başarılı bir şekilde aldınız.", game, 255, 0, 0, true)
end
addEventHandler("onMarkerHit", market, aracVer)