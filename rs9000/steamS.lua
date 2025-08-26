RegisterNetEvent('cad:sendsteam')
  AddEventHandler('cad:sendsteam', function()
   local steamid  = false

  for k,v in pairs(GetPlayerIdentifiers(source))do
      if string.sub(v, 1, string.len("steam:")) == "steam:" then
        steamid = v
      end
    
  end
  TriggerClientEvent('cad:getsteam', source, string.gsub(steamid, "steam:", ""));
  end)