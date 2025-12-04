loadstring:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "HoangAnh Tonghop",
         Animation = "Tiktok : trumchoaescript_230"
         },
        Key = {
        KeySystem = false,
        Title = "Key System",
        Description = "",
        KeyLink = "",
        Keys = {"bomaychiu"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Running the Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copied to Clipboard"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id= 15298567397",
       Size = {60, 60},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Script Farm"})
     local Tab2o = MakeTab({Name = "Tổng hợp khác"})
  
------- BUTTON
    
    AddButton(Tab1o, {
     Name = "Redz Hub",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/20f318386e3fbf069ee3fa797cfc9f34.lua"))()
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
     Name = "ThienDucScript Roblox Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/thienducscript-rgb/Hdhdhd/refs/heads/main/sourcescript.txt"))()
  end
  })
 AddButton(Tab1o, {
     Name = "ThienDucScript Roblox Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/thienducscript-rgb/Hdhdhd/refs/heads/main/sourcescript.txt"))()
  end
  })
 AddButton(Tab2o, {
     Name = "Tổng Hợp Script Premium",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/luraobermeyer-jpg/Betapremium/refs/heads/main/PREMIUM%20SCRIPT%20BETA.lua.txt"))()
  end
  })
 AddButton(Tab1o, {
     Name = "Teddy hub",
    Callback = function()
	  repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TeddyHub.lua"))()
  end
  })
 AddButton(Tab1o, {
     Name = "Nak hub",
    Callback = function()
	  getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Naknohack/NakHubBF/refs/heads/main/Nakhubv2"))()
  end
  })
 AddButton(Tab1o, {
     Name = "W-azure Free",
    Callback = function()
	  loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/85e904ae1ff30824c1aa007fc7324f8f.lua"))()
  end
  })
 AddButton(Tab1o, {
     Name = "Hiru UI redz",
    Callback = function()
	  repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Settings = {
    JoinTeam = true,
    Team = "Marines"-- Pirates or Marines
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/KiddoHiru/BloxFruits/main/Source.lua"))()
  end
  })
 AddButton(Tab1o, {
     Name = "Hoho have key",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
  end
  })
 AddButton(Tab1o, {
     Name = "Blue Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
  end
  })