--[[
 ___  __    ________     
|\  \|\  \ |\   ____\    
\ \  \/  /|\ \  \___|    
 \ \   ___  \ \  \       
  \ \  \\ \  \ \  \____  
   \ \__\\ \__\ \_______\
    \|__| \|__|\|_______|
                         
                         
leaked on 3/18/22
https://killermemez.xyz/
]]

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/loadstring/uilibraries/main/splix.lua"))()
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()

local window = lib:new({textsize = 13.5,font = Enum.Font.RobotoMono,name = "killermemez.xyz",color = Color3.fromRGB(255,255,255)})

local tab = window:page({name = "Elements"})

local section1 = tab:section({name = "Tests",side = "left",size = 300})

local multisection = tab:multisection({name = "Muti-Section Testing",side = "right",size = 250})

local section2 = multisection:section({name = "Section2",side = "right",size = 100})

section1:toggle({name = "toggle",def = false,callback = function(value)
  tog = value
  print(tog)
end})

section1:button({name = "button",callback = function()
   print('hot ui lib')
end})

section1:slider({name = "rate ui lib 1-100",def = 1, max = 100,min = 1,rounding = true,ticking = false,measuring = "",callback = function(value)
   print(value)
end})

section1:dropdown({name = "dropdown",def = "",max = 10,options = {"1","2","3","4","5","6","7","8","9","10"},callback = function(chosen)
   print(chosen)
end})

section1:buttonbox({name = "buttonbox",def = "",max = 4, options = {"yoyoyo","yo2","yo3","yo4"},callback = function(value)
   print(value)
end})


section1:multibox({name = "multibox",def = {}, max = 4,options = {"1","2","3","4"},callback = function(value)
   print(value)
end})

section1:textbox({name = "textbox",def = "default text",placeholder = "Enter WalkSpeed",callback = function(value)
   print(value)
end})

section1:keybind({name = "set ui keybind",def = nil,callback = function(key)
   window.key = key
end})

local picker = section1:colorpicker({name = "theme",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(value)
   color = value
end})