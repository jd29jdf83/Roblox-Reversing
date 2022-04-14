--[[
    __   _ ____                                                                     
   / /__(_) / /__  _________ ___  ___  ____ ___  ___  ____     _________  _________ 
  / //_/ / / / _ \/ ___/ __ `__ \/ _ \/ __ `__ \/ _ \/_  /    / ___/ __ \/ ___/ __ \
 / ,< / / / /  __/ /  / / / / / /  __/ / / / / /  __/ / /_   / /__/ /_/ / /  / /_/ /
/_/|_/_/_/_/\___/_/  /_/ /_/ /_/\___/_/ /_/ /_/\___/ /___/   \___/\____/_/  / .___/ 
                                                                           /_/      
released on 12/14/21

leak by KC
]]

local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/loadstring/uilibraries/main/jansuilib.lua", true))();
local watermark = Lib:CreateWatermark("Test Watermark | FPS: {fps}", Vector2.new(492, 588))
local window = Lib:CreateWindow(
    "Test Library", 
    Vector2.new(500, 550), 
    Enum.KeyCode.RightShift
)
local Tab1 = window:CreateTab("Tab1")
local UISettings = window:CreateTab("Settings")

UISettings:SelectTab()

local Section1 = Tab1:CreateSector("Section1", "left")
local Section2 = UISettings:CreateSector("UI Settings", "left")
local label = Section1:AddLabel("Label")

label:Set("LabelSet")

local Toggle = Section1:AddToggle("Toggle", false, function(state)
    print(state)
end)
local Dropdown = Section1:AddDropdown("Dropdown", {"Object1", "Object2", "Object3"}, "Nothing", false, function(Selected)
    print(Selected)
end)
local Textbox = Section1:AddTextbox("Textbox", "", function(val)
    print(val)
end)
local Button = Section1:AddButton("Button", function()
    print("button press")
end)
local Slider = Section1:AddSlider("Slider", 25, 50, 500, 1, function(num)
    print(num)
end)
Section1:AddSeperator("Seperator")
local Colorpicker = Section1:AddColorpicker("Colorpicker", Color3.new(0.639216, 0.635294, 0.647059), function(val)
    print(val)
end)
--[[CONFIG]]--
UISettings:CreateConfigSystem("right")

--[[SETTINGS]]--
local default = { --// you can edit the values here
    fontsize = 15,
    titlesize = 18,
    font = Enum.Font.Code,
    background = "rbxassetid://5553946656",
    tilesize = 90,
    cursor = true,
    cursorimg = "https://t0.rbxcdn.com/42f66da98c40252ee151326a82aab51f",
    backgroundcolor = Color3.fromRGB(20, 20, 20),
    tabstextcolor = Color3.fromRGB(240, 240, 240),
    bordercolor = Color3.fromRGB(60, 60, 60),
    accentcolor = Color3.fromRGB(28, 56, 139),
    accentcolor2 = Color3.fromRGB(16, 31, 78),
    outlinecolor = Color3.fromRGB(60, 60, 60),
    outlinecolor2 = Color3.fromRGB(0, 0, 0),
    sectorcolor = Color3.fromRGB(30, 30, 30),
    toptextcolor = Color3.fromRGB(255, 255, 255),
    topheight = 48,
    topcolor = Color3.fromRGB(30, 30, 30),
    topcolor2 = Color3.fromRGB(30, 30, 30),
    buttoncolor = Color3.fromRGB(49, 49, 49),
    buttoncolor2 = Color3.fromRGB(39, 39, 39),
    itemscolor = Color3.fromRGB(200, 200, 200),
    itemscolor2 = Color3.fromRGB(210, 210, 210)
}
--// this isnt the only stuff you can add, this is just the stuff I like.
Section2:AddSeperator("Themes")
Section2:AddColorpicker("Background Color", default.backgroundcolor, function(val)
    default.backgroundcolor = val
    window:UpdateTheme(default)
    watermark:UpdateTheme(default)
end)
Section2:AddColorpicker("Tab Text Color", default.tabstextcolor, function(val)
    default.tabstextcolor = val
    window:UpdateTheme(default)
    watermark:UpdateTheme(default)
end)
Section2:AddColorpicker("Accent Color", default.accentcolor, function(val)
    default.accentcolor = val
    default.accentcolor2 = val
    window:UpdateTheme(default)
    watermark:UpdateTheme(default)
end)
Section2:AddKeybind("Toggle UI", Enum.KeyCode.RightShift, function(v) 
    window.hidebutton = v 
end)

