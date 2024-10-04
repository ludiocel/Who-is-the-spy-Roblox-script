--[[
Don't use LuaObfuscator lol

Start dump --> 
  loadstring
  game
  HttpGet
  https://raw.githubusercontent.com/shlexware/Orion/main/source
  MakeWindow
  Name
  Who Is the Spy | Made by Exploitmanscripts
  HidePremium
  SaveConfig
  ConfigFolder
  OrionTest
  MakeTab
  Information
  Icon
  rbxassetid://4483345998
  PremiumOnly
  AddParagraph
  Note:
  This a V1 Script that in development
  Made by Exploitmanscripts
  Dont try to skid this script :) You have been warned
  Discord:
  MrBaconbutimbroke
  Main
  AddSection
  AddButton
  Become Admin
  Callback
  Close panel
  game
  GetService
  Players
  LocalPlayer
  PlayerGui
  Interface
  Main
  adminFrame
  Active
  Visible
  print
  button pressed
  print
  button pressed
  game
  GetService
  Players
  LocalPlayer
  PlayerGui
  Interface
  Main
  adminFrame
  Active
  Visible
<-- End dump
]]--

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

local Window = OrionLib:MakeWindow({
    Name = "Who Is the Spy | Made by Exploitmanscripts",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionTest"
})

local InfoTab = Window:MakeTab({
    Name = "Information",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

InfoTab:AddParagraph("Note:", "This is a V1 Script that is in development\nMade by Exploitmanscripts\nDon't try to skid this script :) You have been warned\nDiscord: MrBaconbutimbroke")

local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

MainTab:AddSection({
    Name = "Admin Section"
})

MainTab:AddButton({
    Name = "Become Admin",
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
        local adminFrame = player.PlayerGui.Interface.Main.adminFrame
        
        adminFrame.Active = true
        adminFrame.Visible = true
        
        print("button pressed")
    end
})

OrionLib:Init()
