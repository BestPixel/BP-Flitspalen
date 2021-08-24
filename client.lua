local trafficLights = {
    "v_traffic_lights",
    "prop_trafficlight",
    "prop_traffic_lightset_01",
    "prop_traffic_03b",
    "prop_traffic_03a",
    "prop_traffic_02b",
    "prop_traffic_02a",
    "prop_traffic_01d",
    "prop_traffic_01b",
    "prop_traffic_01a",
    "prop_traffic_01",
    "prop_streetlight_12b",
    "prop_streetlight_01b",
    "prop_streetlight_01",
    "prop_sign_road_03e",
    "prop_streetlight_01b",
    "prop_sign_road_03g",
    "prop_sign_road_05c",
    "prop_sign_road_05d",
    "prop_sign_road_05e",
    "prop_sign_road_05f",
    "prop_sign_road_05o",
    "prop_sign_road_05za",
    "prop_sign_road_06q",
    "prop_sign_road_06r",
    "prop_sign_road_09c",
    "prop_sign_road_09d"
} 
     


Citizen.CreateThread(function()
   while true do
        for x = 1, #trafficLights do
            local player = GetPlayerPed(-1)
            local playerPosition = GetEntityCoords(player)
            local distance = GetClosestObjectOfType(playerPosition.x, playerPosition.y, playerPosition.z, 100.0, GetHashKey(trafficLights[x]), 0, 0, 0)
            if distance ~= 0 then
                FreezeEntityPosition(distance, true)
            end
        end
       Citizen.Wait(2500)
   end
end) 