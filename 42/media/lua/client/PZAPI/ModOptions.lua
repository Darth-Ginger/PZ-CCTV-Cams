local CCTVCams = {}

CCTVCams.Options = {
    linkDistance = 10,
    LinkCount = 1,
    camFOV = 60
}

local PZOptions

local config = {
    linkDistance = nil,
    LinkCount = nil,
    camFOV = nil
}

local function applyOptions()
    local options = PZAPI.ModOptions:getOptions("CCTVCams")

    if options then
        CCTVCams.Options.linkDistance = options:getOption("inkDistance"):getValue()
        CCTVCams.Options.LinkCount = options:getOption("LinkCount"):getValue()
    else
        print("CCTVCames: Could not load saved settings. Using Defaults.")
    end
end

local function initConfig()
    PZOptions = PZAPI.ModOptions:create("CCTVCams", GetText("UI_CCTVCams_Options_Title"))

    config.linkDistance = PZOptions:AddSlider(
        "CCTVCams_LinkDistance",
        getText("UI_CCTVCams_LinkDistance"),
        5,
        100,
        5,
        CCTVCams.Options.linkDistance,
        getText("UI_CCTVCams_LinkDistance_Tooltip")
    )

    config.LinkCount = PZOptions:AddSlider(
        "CCTVCams_LinkCount",
        getText("UI_CCTVCams_LinkCount"),
        1,
        5,
        1,
        CCTVCams.Options.LinkCount,
        getText("UI_CCTVCams_LinkCount_Tooltip")
    )

    config.camFOV = PZOptions:AddSlider(
        "CCTVCams_camFOV",
        getText("UI_CCTVCams_camFOV"),
        30,
        120,
        5,
        CCTVCams.Options.camFOV,
        getText("UI_CCTVCams_camFOV_Tooltip")
    )

    PZOptions.apply = function()
        applyOptions()
    end
end

initConfig()

Events.OnMainMenuEnter.Add(function()
    applyOptions()
end)

return CCTVCams