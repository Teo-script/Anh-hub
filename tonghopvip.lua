loadstring(game:HttpGet("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "HoangAnh TongHop",
         Animation = "by real_hoanganh"
         },
        Key = {
        KeySystem = false,
        Title = "Key System",
        Description = "",
        KeyLink = "",
        Keys = {"1234"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Running the Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copied to Clipboard"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id=106007402014282",
       Size = {60, 60},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Script Farm"})
     local Tab2o = MakeTab({Name = "99 Night"})
     local Tab3o = MakeTab({Name= "Grow a garden"})
     local Tab4o = MakeTab({Name = "Kaitun Blox Kid"})
     local Tab5o = MakeTab({Name = "Plants Vs Brainrot"})
     local Tab6o = MakeTab({Name = "Blue Lock Rivals"})
     local Tab7o = MakeTab({Name = "Steal a Brainrot"})
     local Tab8o = MakeTab({Name = "Meme Sea"})
     
------- BUTTON
    
    AddButton(Tab1o, {
     Name = "Redz Hub",
    Callback = function()
	  local Settings = {
    JoinTeam = "Pirates"; -- Pirates / Marines
    Translator = true;   -- true / false
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/20f318386e3fbf069ee3fa797cfc9f34.lua"))()(Settings)
  end
  })
    AddButton(Tab1o, {
     Name = "ThienDucScript Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/thienducscript-rgb/Hdhdhd/refs/heads/main/bananahub.txt"))()
  end
  })
  AddButton(Tab1o, {
     Name = "MinGaming",
    Callback = function()
	  getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinUp27Vn"))()
  end
  })
 AddButton(Tab1o, {
     Name = "Omg Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
  end
  })
 AddButton(Tab4o, {
     Name = "Kaitun V4",
    Callback = function()
	  getgenv().TeddyHub = {
    ["Allies"] = {
        "name","name", 
        "name"
    },
    ["Method"] = "Kill Players After Trial", -- Kill Players After Trial, Reset Player After Trial
    ["MainAccount"] = "name", -- for teleport to server of main account
    ["Team"] = "Marines",
    ["Gear"] = "A-B-B", -- "A-A-B" or ""  NOT GEAR 1 and 5
    ["ResetAfterTrial"] = true
}
loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/d91754ae22d3cd7e"))() 
  end
  })
 AddButton(Tab4o, {
     Name = "Kaitun Boss",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/HopScript.luau"))()
  end
  })
 AddButton(Tab1o, {
     Name = "ThienDucScript Roblox Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/thienducscript-rgb/Hdhdhd/refs/heads/main/sourcescript.txt"))()
  end
  })
 AddButton(Tab4o, {
     Name = "Teddy Hop Sever",
    Callback = function()
	  repeat task.wait() until game:IsLoaded() and game:GetService("Players") and game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")

loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-FREEMIUM"))()
  end
  })
 AddButton(Tab1o, {
     Name = "Nak Hub",
    Callback = function()
	  getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Naknohack/NakHubBF/refs/heads/main/Nakhubv2"))()
  end
  })
 AddButton(Tab4o, {
     Name = "Arya Kaitun",
    Callback = function()
	  Config = {
Team = "Pirates",
Configuration = {
HopWhenIdle = true,
AutoHop = true,
AutoHopDelay = 60 * 60,
FpsBoost = false,
BlackScreen = true
},
Items = {
-- Melees
AutoFullyMelees = true,
-- Swords
Saber = true,
CursedDualKatana = false,
-- Guns
SoulGuitar = false,
-- Upgrades
RaceV2 = true
},
Settings = {
StayInSea2UntilHaveDarkFragments = false
}
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/hhl29042008-ops/script/refs/heads/main/cac"))()
  end
  })
 AddButton(Tab1o, {
     Name = "Andepzai Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/h6hbii/AnDepZaiHub/refs/heads/main/AndepzaiHub.lua"))()
  end
  })
 AddButton(Tab1o, {
     Name = "Gravity Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
  end
  })
 AddButton(Tab1o, {
     Name = "HoHo Hub V4",
    Callback = function()
	  _G.HohoVersion = "v4"
loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
  end
  })
 AddButton(Tab2o, {
     Name = "Foxname Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/FoxnameHub.lua"))()
  end
  })
 AddButton(Tab2o, {
     Name = "VapeVoid",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/nightsintheforest.lua", true))()
  end
  })
 AddButton(Tab2o, {
     Name = "H4xScripts",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/H4xScripts/Loader/refs/heads/main/loader.lua", true))()
  end
  })
 AddButton(Tab6o, {
     Name = "Controll Ball",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/RedJDarks/MAIN/refs/heads/main/ControlRecreate"))()
  end
  })
 AddButton(Tab6o, {
     Name = "Tbao Blue Lock",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/game/refs/heads/main/TbaoHubBlueLockRivals"))()
  end
  })
 AddButton(Tab6o, {
     Name = "XZuyaX Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/XZuuyaX/XZuyaX-s-Hub/refs/heads/main/Main.Lua", true))()
  end
  })
 AddButton(Tab7o, {
     Name = "Apex Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Uranus9103/apexhubpro/refs/heads/main/Steal-Brainrot-APEXHUB"))()
  end
  })
 AddButton(Tab7o, {
     Name = "Chill Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
  end
  })
 AddButton(Tab8o, {
     Name = "Redz Meme Sea",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))(Settings)
  end
  })
 AddButton(Tab8o, {
     Name = "Kirito Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/KiritohubF/KiritoBitkub-main-Mobile.lua-main-README.md/main/README.md"))()
  end
  })
 AddButton(Tab3o, {
     Name = "Zysume",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/vdawng/ZusumeHub/refs/heads/main/Updatezysume"
  end
  })
 AddButton(Tab1o, {
     Name = "HoangAnh Roblox Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Teo-script/Anh-hub/refs/heads/main/HoangAnhpremium.lua", true))()
  end
  })
 AddButton(Tab1o, {
     Name = "Script Qin Shi Huang",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Teo-script/Anh-hub/refs/heads/main/QinShiHuang.lua", true))()
  end
  })