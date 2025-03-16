require 'Items/ProceduralDistributions'

SecuritySystem = SecuritySystem or {};

local myDistribution = {
    ArmyStorageElectronics = {
        items = {
            "CCTVMonitor", 6, -- item, chance,
            "SecurityCameraBullet", 10,
        },
        junk = { -- this one can be removed if you don't put anything in it
            "CCTVMonitor", 2,
            "SecurityCameraBullet", 8,
        },
    },
    CrateElectronics = {
        items = {
            "CCTVMonitor", 10, -- item, chance,
            "SecurityCameraBullet", 20,
        },
    },
    MechanicShelfElectric = {
        items = {
            "CCTVMonitor", 6, -- item, chance,
            "SecurityCameraBullet", 10,
        },
        junk = { -- this one can be removed if you don't put anything in it
            "CCTVMonitor", 2,
            "SecurityCameraBullet", 8,
        },
    },
    ElectronicStoreAppliances = {
        items = {
            "CCTVMonitor", 6, -- item, chance,
            "SecurityCameraBullet", 10,
        },
        junk = { -- this one can be removed if you don't put anything in it
            "CCTVMonitor", 2,
            "SecurityCameraBullet", 8,
        },
    },
    ElectronicStoreCases = {
        items = {
            "CCTVMonitor", 6, -- item, chance,
            "SecurityCameraBullet", 10,
            "SecuritySystemDesign", 20,
        },
        junk = { -- this one can be removed if you don't put anything in it
            "CCTVMonitor", 2,
            "SecurityCameraBullet", 8,
            "SecuritySystemDesign", 10,
        },
    },
    ElectronicStoreMagazines = {
        items = {
            "SecuritySystemDesign", 46, -- item, chance,
        },
    },
    ElectronicStoreMisc = {
        items = {
            "CCTVMonitor", 6, -- item, chance,
            "SecurityCameraBullet", 10,
            "SecuritySystemDesign", 20,
        },
        junk = { -- this one can be removed if you don't put anything in it
            "CCTVMonitor", 2,
            "SecurityCameraBullet", 8,
            "SecuritySystemDesign", 10,
        },
    },
    GigamartHouseElectronics = {
        items = {
            "CCTVMonitor", 6, -- item, chance,
            "SecurityCameraBullet", 10,
            "SecuritySystemDesign", 20,
        },
        junk = { -- this one can be removed if you don't put anything in it
            "CCTVMonitor", 2,
            "SecurityCameraBullet", 8,
            "SecuritySystemDesign", 10,
        },
    },
    StoreShelfElectronics = {
        items = {
            "CCTVMonitor", 6, -- item, chance,
            "SecurityCameraBullet", 10,
            "SecuritySystemDesign", 20,
        },
        junk = { -- this one can be removed if you don't put anything in it
            "CCTVMonitor", 2,
            "SecurityCameraBullet", 8,
            "SecuritySystemDesign", 10,
        },
    },
        
}

-- caching for performance reasons
local ProceduralDistributions_list = ProceduralDistributions.list
local table_insert = table.insert

local function insertInDistribution(distrib)
    -- iterate through every given distributions
    for k,v in pairs(distrib) do
        -- cache this distribution list
        local ProceduralDistributions_list_k = ProceduralDistributions_list[k]

        -- insert items
        local items = v.items
        local ProceduralDistributions_list_k_items = ProceduralDistributions_list_k.items
        if items then
            for i = 1,#items do
                table_insert(ProceduralDistributions_list_k_items,items[i])
            end
        end

        -- insert junk
        local junk = v.junk
        local ProceduralDistributions_list_k_junk = ProceduralDistributions_list_k.junk
        if junk then
            for i = 1,#junk do
                table_insert(ProceduralDistributions_list_k_junk,junk[i])
            end
        end
    end
end

insertInDistribution(myDistribution)