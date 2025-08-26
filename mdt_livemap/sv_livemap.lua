-- CAD/MDT Live Map Integration System (Developed by Tommy Johnston)

--Your CAD url link with a trailing slash, example (https://cad.example.com/)
communityapi = "https://cad.example.com/"



























--CODE BEGINS, NO NEED TO TOUCH THIS!
posArray = {}

RegisterNetEvent('mdt-livemap:updatepos')
AddEventHandler('mdt-livemap:updatepos', function(x, y)
local src = source
local steamid  = false

--Grab Steam Identifier
for k,v in pairs(GetPlayerIdentifiers(src))do
   if string.sub(v, 1, string.len("steam:")) == "steam:" then
      steamid = v:gsub("steam:", "")
   end
end

if(steamid) then
   if(setContains(posArray, steamid)) then
      posArray[steamid]["x"] = x
      posArray[steamid]["y"] = y
   else
      posArray[steamid] = {}
      posArray[steamid]["x"] = x
      posArray[steamid]["y"] = y
   end
end
end)

AddEventHandler('playerDropped', function ()
local src = source
local steamid  = false

--Grab Steam Identifier
for k,v in pairs(GetPlayerIdentifiers(src))do
   if string.sub(v, 1, string.len("steam:")) == "steam:" then
      steamid = v
   end
end

if(steamid) then
   removeFromSet(posArray, steamid)
end
end)

Citizen.CreateThread(function()
while true do
   Citizen.Wait(2500)
   PerformHttpRequest(communityapi..'api/livemap.php?arr='..json.encode(posArray), function (errorCode, resultData, resultHeaders)
   if(tostring(errorCode) ~= "200") then
      print("LiveMap Integration: The URL Request for LiveMap Failed, please check your configuration or contact support.");
   end
   end)

end
end)

function setContains(set, key)
   return set[key] ~= nil
end

function removeFromSet(set, key)
   set[key] = nil
end
