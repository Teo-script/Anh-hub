local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/refs/heads/main/Redzhubui"))()

local Window = redzlib:MakeWindow({
  Title = "HoangAnh vip",
  SubTitle = "by real_hoanganh",
  SaveFolder = "Redz | redz lib v5.lua"
})

Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://83190276951914", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(0, 5) },
})

local Tab = Window:MakeTab({"Discord", "info"})

