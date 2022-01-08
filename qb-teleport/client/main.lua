-- Variables

local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()

-- Functions

local function DrawText3D(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

-- Events
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    PlayerData = {}
end)

-- Threads
-- Casino Teleport
CreateThread(function()
    local CasinoBlip = AddBlipForCoord(Config['casino'].outsideLocation.x, Config['casino'].outsideLocation.y, Config['casino'].outsideLocation.z)
    SetBlipSprite(CasinoBlip, 617)
    SetBlipColour(CasinoBlip, 2)
    SetBlipScale(CasinoBlip, 0.8)
    SetBlipAsShortRange(CasinoBlip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Diamond Casino")
    EndTextCommandSetBlipName(CasinoBlip)

    while true do

        Wait(0)
        local pos = GetEntityCoords(PlayerPedId(), true)


        -- Enter Casino
        if #(pos - vector3(Config['casino'].outsideLocation.x, Config['casino'].outsideLocation.y, Config['casino'].outsideLocation.z)) < 1.3 then
            DrawText3D(Config['casino'].outsideLocation.x, Config['casino'].outsideLocation.y, Config['casino'].outsideLocation.z + 1, "~g~E~w~ - To Enter the Casino")
            if IsControlJustReleased(0, 38) then
                DoScreenFadeOut(500)
                while not IsScreenFadedOut() do
                    Wait(10)
                end
                SetEntityCoords(PlayerPedId(), Config['casino'].insideLocation.x, Config['casino'].insideLocation.y, Config['casino'].insideLocation.z)
                DoScreenFadeIn(500)
            end
        end


        -- Exit Casino
		if #(pos - vector3(Config['casino'].insideLocation.x, Config['casino'].insideLocation.y, Config['casino'].insideLocation.z)) < 1.3 then
			DrawText3D(Config['casino'].insideLocation.x, Config['casino'].insideLocation.y, Config['casino'].insideLocation.z + 1, "~g~E~w~ - To exit the Casino")
			if IsControlJustReleased(0, 38) then
				DoScreenFadeOut(500)
				while not IsScreenFadedOut() do
					Wait(10)
				end
				SetEntityCoords(PlayerPedId(), Config['casino'].outsideLocation.x, Config['casino'].outsideLocation.y, Config['casino'].outsideLocation.z + 1)
				DoScreenFadeIn(500)
			end
		end     
    end
end)

-- Penthouse Teleport
CreateThread(function()
    local PenhouseBlip = AddBlipForCoord(Config['penthouse'].outsideLocation.x, Config['penthouse'].outsideLocation.y, Config['penthouse'].outsideLocation.z)
    SetBlipSprite(PenhouseBlip, 617)
    SetBlipColour(PenhouseBlip, 2)
    SetBlipScale(PenhouseBlip, 0.8)
    SetBlipAsShortRange(PenhouseBlip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Penthouse Entrance")
    EndTextCommandSetBlipName(PenhouseBlip)

    while true do

        Wait(0)
        local pos = GetEntityCoords(PlayerPedId(), true)


        -- Enter Penthouse
        if #(pos - vector3(Config['penthouse'].outsideLocation.x, Config['penthouse'].outsideLocation.y, Config['penthouse'].outsideLocation.z)) < 1.3 then
            DrawText3D(Config['penthouse'].outsideLocation.x, Config['penthouse'].outsideLocation.y, Config['penthouse'].outsideLocation.z + 1, "~g~E~w~ - To Enter the Penthouse")
            if IsControlJustReleased(0, 38) then
                DoScreenFadeOut(500)
                while not IsScreenFadedOut() do
                    Wait(10)
                end
                SetEntityCoords(PlayerPedId(), Config['penthouse'].insideLocation.x, Config['penthouse'].insideLocation.y, Config['penthouse'].insideLocation.z)
                DoScreenFadeIn(500)
            end
        end


        -- Exit Casino
		if #(pos - vector3(Config['penthouse'].insideLocation.x, Config['penthouse'].insideLocation.y, Config['penthouse'].insideLocation.z)) < 1.3 then
			DrawText3D(Config['penthouse'].insideLocation.x, Config['penthouse'].insideLocation.y, Config['penthouse'].insideLocation.z + 1, "~g~E~w~ - To exit the Penthouse")
			if IsControlJustReleased(0, 38) then
				DoScreenFadeOut(500)
				while not IsScreenFadedOut() do
					Wait(10)
				end
				SetEntityCoords(PlayerPedId(), Config['penthouse'].outsideLocation.x, Config['penthouse'].outsideLocation.y, Config['penthouse'].outsideLocation.z + 1)
				DoScreenFadeIn(500)
			end
		end
    end
end)

-- Weedfarm
CreateThread(function()
    --[[local PenhouseBlip = AddBlipForCoord(Config['weed'].outsideLocation.x, Config['weed'].outsideLocation.y, Config['weed'].outsideLocation.z)
    SetBlipSprite(PenhouseBlip, 617)
    SetBlipColour(PenhouseBlip, 2)
    SetBlipScale(PenhouseBlip, 0.8)
    SetBlipAsShortRange(PenhouseBlip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Penthouse Entrance")
    EndTextCommandSetBlipName(PenhouseBlip)
    ]]--
    while true do

        Wait(0)
        local pos = GetEntityCoords(PlayerPedId(), true)


        -- Enter Weedfarm
        if #(pos - vector3(Config['weed'].outsideLocation.x, Config['weed'].outsideLocation.y, Config['weed'].outsideLocation.z)) < 1.3 then
            DrawText3D(Config['weed'].outsideLocation.x, Config['weed'].outsideLocation.y, Config['weed'].outsideLocation.z + 1, "~g~E~w~ - To Enter the Weedfarm")
            if IsControlJustReleased(0, 38) then
                DoScreenFadeOut(500)
                while not IsScreenFadedOut() do
                    Wait(10)
                end
                SetEntityCoords(PlayerPedId(), Config['weed'].insideLocation.x, Config['weed'].insideLocation.y, Config['weed'].insideLocation.z)
                DoScreenFadeIn(500)
            end
        end


        -- Exit Weedfarm
		if #(pos - vector3(Config['weed'].insideLocation.x, Config['weed'].insideLocation.y, Config['weed'].insideLocation.z)) < 1.3 then
			DrawText3D(Config['weed'].insideLocation.x, Config['weed'].insideLocation.y, Config['weed'].insideLocation.z + 1, "~g~E~w~ - To exit the Weedfarm")
			if IsControlJustReleased(0, 38) then
				DoScreenFadeOut(500)
				while not IsScreenFadedOut() do
					Wait(10)
				end
				SetEntityCoords(PlayerPedId(), Config['weed'].outsideLocation.x, Config['weed'].outsideLocation.y, Config['weed'].outsideLocation.z + 1)
				DoScreenFadeIn(500)
			end
		end
    end
end)

-- Exports

exports('SetTemplate', SetTemplate)
