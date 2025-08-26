local display = false
local looped = true;
TriggerServerEvent('cad:sendsteam');
RegisterNetEvent('cad:getsteam')
  AddEventHandler('cad:getsteam', function(steamid)
	SendNUIMessage({
	steam = steamid,
	action = "sendSteam"
})
end)
  
Citizen.CreateThread(function()
	while looped do
		Citizen.Wait(1000)
		TriggerEvent('nui:on', true)
		looped = false
	end
end)

  --[[ ////////////////////////////////////////// ]]

  RegisterNetEvent('nui:on')
  AddEventHandler('nui:on', function()
TriggerServerEvent('cad:sendsteam');
    SendNUIMessage({
      type = "ui",
      display = true,
    })
  end)

  RegisterNetEvent('nui:off')
  AddEventHandler('nui:off', function()
    SendNUIMessage({
      type = "ui",
      display = false
    })
  end)
