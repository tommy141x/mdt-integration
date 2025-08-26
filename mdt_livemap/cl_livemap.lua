Citizen.CreateThread(function()
	while true do
		Citizen.Wait(2500)
		pos = GetEntityCoords(GetPlayerPed(-1))
		TriggerServerEvent("mdt-livemap:updatepos", pos.x, pos.y)
	end
end)