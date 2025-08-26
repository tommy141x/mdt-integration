TriggerServerEvent('cad:sendsteam');
RegisterNetEvent('cad:getsteam')
  AddEventHandler('cad:getsteam', function(steamid)
	SendNUIMessage({
	steam = steamid,
	action = "sendSteam"
})
end)