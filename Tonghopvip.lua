-- ✅ MẪU CHUẨN CHO NGƯỜI MỚI | TÉO HUB 🍎
-- Giữ nguyên giao diện thật, chỉ thêm hướng dẫn 👈 ngay bên cạnh dòng cần sửa

repeat task.wait() until game:IsLoaded()

-- 🟢 Nút mở menu chính
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.10615778, 0, 0.16217947, 0)
ImageButton.Size = UDim2.new(0, 40, 0, 40)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id=106007402014282"  -- 👈 đổi ID ảnh nút mở menu tại đây (ảnh roblox)

UICorner.CornerRadius = UDim.new(1, 10)
UICorner.Parent = ImageButton

ImageButton.MouseButton1Down:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
end)

-- 🟣 Giao diện Fluent
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
repeat wait() until game:IsLoaded()

-- 🪟 Cửa sổ chính
local Window = Fluent:CreateWindow({
	Title = "HoangAnh Hub",         -- 👈 đổi thành tên script của bạn
	SubTitle = "by LeHoangAnh",              -- 👈 đổi mô tả phụ
	TabWidth = 157,
	Size = UDim2.fromOffset(450, 300),
	Acrylic = true,
	Theme = "Amethyst",                   -- 👈 đổi màu chủ đạo: Amethyst, Dark, Aqua, Light,...
	MinimizeKey = Enum.KeyCode.End
})

-- 📑 Các tab (mục chính)
local Tabs = {
	Main0 = Window:AddTab({ Title = "Nhóm tôi tạo" }),  -- 👈 đổi tên tab 1
	Main1 = Window:AddTab({ Title = "grow a garden tuổi" }),  -- 👈 đổi tên tab 2
	Main2 = Window:AddTab({ Title = "bran rót💩" }),     -- 👈 đổi tên tab 3
	Main3 = Window:AddTab({ Title = "99 đêm🥷" }),        -- 👈 đổi tên tab 4
	Main4 = Window:AddTab({ Title = "blox fruit🍎" }),    -- 👈 đổi tên tab 5
	Main5 = Window:AddTab({ Title = "Script Kaitun🐓" }) -- 👈 đổi tên tab 6
}

------------------------------------------------
-- TAB 1: Các kênh tiktok
------------------------------------------------
Tabs.Main0:AddButton({
	Title = "Nhóm zalo",              -- 👈 tên nút
	Description = "Join đi mấy ní",-- 👈 mô tả nút
	Callback = function()
		setclipboard("https://zalo.me/g/mwlecd672")  -- 👈 link sao chép
	end
})

Tabs.Main0:AddButton({
	Title = "tiktok",
	Description = "Follow tiktok tui",
	Callback = function()
		setclipboard("tiktok.com/@trumchoaescript_230")     -- 👈 link khác
	end
})

Tabs.Main0:AddButton({
	Title = "Discord",
	Description = "Join discord tui đi",
	Callback = function()
		setclipboard("https://discord.gg/3sVNYVM8")
	end
})

------------------------------------------------
-- TAB 2: Ví dụ thêm script
------------------------------------------------
Tabs.Main1:AddButton({
	Title = "speed hub🌱",                             -- 👈 tên nút hiển thị
	Description = "script này ngon á đủ chức năng cả😃",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))() -- 👈 link script tải
	end
})
Tabs.Main4:AddButton({
	Title = "HoangAnh Hub",                             -- 👈 tên nút hiển thị
	Description = "script này ảnh giống redz",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Teo-script/Anh-hub/refs/heads/main/HoangAnh.lua"))() -- 👈 link script tải
	end
})
Tabs.Main5:AddButton({
	Title = "Kaitun boss",                             -- 👈 tên nút hiển thị
	Description = "script tự động đổi sv kaitun boss",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
        loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/HopScript.luau"))() -- 👈 link script tải
	end
})
Tabs.Main2:AddButton({
	Title = "Kurd hub",                             -- 👈 tên nút hiển thị
	Description = "script này cướp brairot ngon-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Ninja10908/S4/refs/heads/main/Kurdhub"))() -- 👈 link script tải
    end
})
Tabs.Main2:AddButton({
	Title = "Chill hub",                             -- 👈 tên nút hiển thị
	Description = "script chill hub",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))() -- 👈 link script tải
	end
})