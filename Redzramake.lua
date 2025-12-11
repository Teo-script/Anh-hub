-- 1️⃣ KHAI BÁO KEY & LINK GET KEY
local key = "🗿" -- Key bạn đặt
local keyLink = "https://zalo.me/g/mwlecd672" -- Link khi ấn "Get Key"

-- 2️⃣ GIAO DIỆN NHẬP KEY
local CoreGui = game:GetService("CoreGui")
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local CheckButton = Instance.new("TextButton")
local GetKeyButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Name = "KeySystem"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Frame.Size = UDim2.new(0, 300, 0, 160)
Frame.Position = UDim2.new(0.5, -150, 0.5, -80)
UICorner.Parent = Frame

-- 🔴 Nút thoát (dấu X)
local CloseButton = Instance.new("TextButton")
CloseButton.Parent = Frame
CloseButton.Text = "X"
CloseButton.Size = UDim2.new(0, 25, 0, 25)
CloseButton.Position = UDim2.new(1, -30, 0, 5) -- góc phải trên khung
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
CloseButton.TextColor3 = Color3.fromRGB(255,255,255)
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextSize = 18

local closeCorner = Instance.new("UICorner", CloseButton)
closeCorner.CornerRadius = UDim.new(0, 5)

CloseButton.MouseButton1Click:Connect(function()
	ScreenGui:Destroy() -- ấn X sẽ tắt giao diện
end)
TextBox.Parent = Frame
TextBox.PlaceholderText = "Nhập key vô đi"
TextBox.Text = ""
TextBox.Size = UDim2.new(0.9, 0, 0, 35)
TextBox.Position = UDim2.new(0.05, 0, 0.25, 0)
TextBox.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
UICorner:Clone().Parent = TextBox

CheckButton.Parent = Frame
CheckButton.Text = "Kiểm tra key ✅"
CheckButton.Size = UDim2.new(0.4, 0, 0, 30)
CheckButton.Position = UDim2.new(0.05, 0, 0.65, 0)
CheckButton.BackgroundColor3 = Color3.fromRGB(80, 170, 80)
UICorner:Clone().Parent = CheckButton

GetKeyButton.Parent = Frame
GetKeyButton.Text = "Lấy key 🔑"
GetKeyButton.Size = UDim2.new(0.4, 0, 0, 30)
GetKeyButton.Position = UDim2.new(0.55, 0, 0.65, 0)
GetKeyButton.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
UICorner:Clone().Parent = GetKeyButton

GetKeyButton.MouseButton1Click:Connect(function()
	setclipboard(keyLink)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Đã copy link 🔗";
		Text = "Dán lên trình duyệt để lấy key nhé!";
		Duration = 4;
	})
end)

local keyOk = false
CheckButton.MouseButton1Click:Connect(function()
	if TextBox.Text == key then
		keyOk = true
		ScreenGui:Destroy()
		game.StarterGui:SetCore("SendNotification", {
			Title = "Thành công 🎉";
			Text = "Key đúng! Script sẽ khởi chạy.";
			Duration = 3;
		})
	else
		game.StarterGui:SetCore("SendNotification", {
			Title = "Sai key ❌";
			Text = "Hãy ấn nút 'Lấy key' để lấy key mới.";
			Duration = 3;
		})
	end
end)

-- 3️⃣ CHỜ NHẬP KEY ĐÚNG MỚI CHẠY SCRIPT CHÍNH
repeat task.wait() until keyOk == true

-- 👉 DÁN CODE CHÍNH CỦA BẠN NGAY DƯỚI DÒNG NÀY 👇
------------------------------------------------------
-- ↓ TOÀN BỘ CODE CỦA BẠN (bắt đầu từ dòng: local ScreenGui = Instance.new("ScreenGui"))
local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/refs/heads/main/Redzhubui"))()

local Window = redzlib:MakeWindow({
  Title = "redz Hub : Blox Fruits",
  SubTitle = "by real_redz",
  SaveFolder = "Redz | redz lib v5.lua"
})

Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://15298567397", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(0, 5) },
})

local Tab = Window:MakeTab({"Discord", "info"})

Tab:AddDiscordInvite({
    Name = "redz Hub | Community",
    Description = "Join our discord community to receive information about the next update",
    Logo = "rbxassetid://95105936784502",
    Invite = "http://discord.gg/7aR7kNVt4g",
})

local Tab2 = Window:MakeTab({"Farm", "home"})

local Dropdown = Tab2:AddDropdown({
  Name = "Chọn Công Cụ",
  Description = "Chọn công cụ bạn muốn sử dụng",
  Options = {"Melee", "Blox Fruit", "Sword"},
  Default = "Melee",
  Flag = "Melee",
  Callback = function()
    
  end
})

local Dropdown = Tab2:AddDropdown({
  Name = "Kích Thước Ui",
  Description = "Điều chỉnh kích thước giao diện",
  Options = {"Small", "Medium", "Large", "Bigger"},
  Default = "Large",
  Flag = "Large",
  Callback = function()
    
  end
})

local Section = Tab2:AddSection({"Farm"})

Tab2:AddToggle({
    Name = "Tự Động lên cấp",
    Description = "Tự động farm cấp",
    Default = false,
    Callback = function()

    end
})

Tab2:AddToggle({
    Name = "Farm Kẻ Địch Gần",
    Description = "Tự động tiêu diệt kẻ địch gần nhất",
    Default = false,
    Callback = function()

    end
})

Tab2:AddToggle({
    Name = "Farm Hải Tặc Biển",
    Description = "Tự động hoàn thành sự kiện hải tặc ở Castelo do Mar",
    Default = false,
    Callback = function()

    end
})


local Section = Tab2:AddSection({"Xương"})

Tab2:AddToggle({
    Name = "Farm Xương",
    Description = "Tự động farm xương",
    Default = false,
    Callback = function()

    end
})

Tab2:AddToggle({
    Name = "Tự Động Soul Reaper",
    Description = "Triệu hồi và tiêu diệt Soul Reaper",
    Default = false,
    Callback = function()

    end
})

Tab2:AddToggle({
    Name = "Đổi Xương",
    Description = "Tự động đổi xương lấy phần thưởng",
    Default = false,
    Callback = function()

    end
})

local Section = Tab2:AddSection({"Rương"})

Tab2:AddToggle({
    Name = "Tự Động Rương [ Tween ]",
    Description = "Tự động mở rương bằng tween",
    Default = false,
    Callback = function()

    end
})

local Section = Tab2:AddSection({"Boss"})

Tab2:AddButton({
    Name = "Cập Nhật Boss",
    Description = "Làm mới danh sách boss",
    Default = false,
    Callback = function()

    end
})

local Dropdown = Tab2:AddDropdown({
  Name = "Danh Sách Boss",
  Description = "Chọn boss để tấn công",
  Options = {"Boss1", "Boss2", "Boss3"},
  Default = "nil",
  Flag = "nil",
  Callback = function()
    
  end
})

Tab2:AddToggle({
    Name = "Giết Boss Đã Chọn",
    Description = "Tự động tấn công boss đã chọn",
    Default = false,
    Callback = function()

    end
})

Tab2:AddToggle({
    Name = "Farm Tất Cả Boss",
    Description = "Tự động tấn công mọi boss có sẵn",
    Default = false,
    Callback = function()

    end
})

Tab2:AddToggle({
    Name = "Nhận Nhiệm Vụ Boss",
    Description = "Tự động nhận nhiệm vụ boss",
    Default = true,
    Callback = function()

    end
})

local Section = Tab2:AddSection({"Material"})

local Dropdown = Tab2:AddDropdown({
  Name = "Danh Sách Nguyên Liệu",
  Description = "Chọn boss để tấn công",
  Options = {"Nguyên Liệu1", "Nguyên Liệu2", "Nguyên Liệu3"},
  Default = "nil",
  Flag = "nil",
  Callback = function()
    
  end
})

Tab2:AddToggle({
    Name = "Farm Nguyên Liệu",
    Description = "Tự động farm nguyên liệu",
    Default = false,
    Callback = function()

    end
})

local Section = Tab2:AddSection({"Mastery"})

Tab2:AddSlider({
  Name = "Chọn Máu Kẻ Địch [ % ]",
  Description = "Thiết lập phần trăm máu kẻ địch để tấn công",
  Min = 10,
  Max = 100,
  Increase = 1,
  Default = 16,
  Callback = function()
  
  end
})

local Dropdown = Tab2:AddDropdown({
  Name = "Chọn Công Cụ",
  Description = "Chọn công cụ bạn muốn sử dụng",
  Options = {"Blox Fruit", "Gun"},
  Default = "Blox Fruit",
  Flag = "Blox Fruit",
  Callback = function()
    
  end
})

local Dropdown = Tab2:AddDropdown({
  Name = "Chọn Kỹ Năng",
  Description = "Chọn kỹ năng để sử dụng",
  Options = {"Z", "X", "C", "V", "F"},
  Default = "Z",
  Flag = "Z",
  Callback = function()
    
  end
})

Tab2:AddToggle({
    Name = "Farm Thông Thạo",
    Description = "Tăng thành thạo kỹ năng tự động",
    Default = false,
    Callback = function()

    end
})




local Tab3 = Window:MakeTab({"Nhiệm Vụ/Vật Phẩm", "swords"})

local Section = Tab3:AddSection({"Dragon Dojo"})

Tab3:AddToggle({
    Name = "Nhiệm Vụ Dojo",
    Description = "Tự động hoàn thành nhiệm vụ đai",
    Default = false,
    Callback = function()

    end
})

Tab3:AddToggle({
    Name = "Nhiệm Vụ Dragon Hunter",
    Description = "Mỗi nhiệm vụ hoàn thành nhận 'Blaze Ember'",
    Default = false,
    Callback = function()

    end
})

Tab3:AddToggle({
    Name = "Auto Draco V2 & V3",
    Description = "Tự động lên cấp Draco V2 và V3",
    Default = false,
    Callback = function()

    end
})

Tab6:AddToggle({
    Name = "Tự Động Sea 1",
    Description = "Tự động qua sea 1",
    Default = false,
    Callback = function()

    end
})

Tab6:AddToggle({
    Name = "Tự Động Sea 2",
    Description = "Tự động qua sea 2",
    Default = false,
    Callback = function()

    end
})

Tab6:AddToggle({
    Name = "Tự Động Sea 3",
    Description = "Tự động qua sea 3",
    Default = false,
    Callback = function()

    end
})













local Tab4 = Window:MakeTab({"Trái/Đột Kích", "cherry"})

local Tab5 = Window:MakeTab({"Stats", "signal"})

local Tab6 = Window:MakeTab({"Dịch Chuyển", "locate"})

local Tab7 = Window:MakeTab({"Giao Diện", "user"})

local Tab8 = Window:MakeTab({"Cửa Hàng", "shoppingCart"})

local Tab9 = Window:MakeTab({"Khác", "settings"})


