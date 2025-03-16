local config = require("ModOptions")
local linkDistance = config.linkDistance
local linkCount = config.LinkCount
local camFOV = config.camFOV



function CCTVCams.OnCreateDevice(item)
    local linkDistance = config.linkDistance
    local linkCount = config.LinkCount
    
    local player = getPlayer()
    local playerInv = player:getInventory()
    local nearbyDevices = CCTVCams.FindNearbyDevices(player, linkDistance)

    if #nearbyDevices > 0 then
        -- Prompt player to link devices
        CCTVCams.PromptLinkDevices(item, nearbyDevices)
    end
end

function CCTVCams.FindNearbyDevices(player, distance)
    local devices = {}
    -- Logic to find devices within the specified distance
    return devices
end

function CCTVCams.PromptLinkDevices(newDevice, nearbyDevices)
    -- Logic to prompt player and establish links
end
