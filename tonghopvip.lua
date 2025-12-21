local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/refs/heads/main/Redzhubui"))()

local Window = redzlib:MakeWindow({
  Title = "HoangAnh tonghop",
  SubTitle = "by realhoanganh",
  SaveFolder = "Redz | redz lib v5.lua"
})

Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://1036107301381", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(0, 5) },
})

local Tab = Window:MakeTab({"Discord", "info"})

Tab:AddDiscordInvite({
    Name = "HoangAnh | Community",
    Description = "Join discord để lấy nhiều script hơn nhé !",
    Logo = "rbxassetid://95110740174",
    Invite = "http://discord.gg/7aRUFG107",
})