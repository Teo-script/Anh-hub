local player = game.Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "DoughOverlay"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = player:WaitForChild("PlayerGui")

local background = Instance.new("Frame")
background.Size = UDim2.new(1, 0, 1, 0)
background.BackgroundColor3 = Color3.new(0, 0, 0)
background.BackgroundTransparency = 0.4
background.Visible = true
background.Parent = gui

local topText = Instance.new("TextLabel")
topText.Size = UDim2.new(1, 0, 0.1, 0)
topText.Position = UDim2.new(0, 0, 0, 0)
topText.BackgroundTransparency = 1
topText.Text = "HoangAnh Kaitun Chest New !"
topText.TextColor3 = Color3.fromRGB(255, 255, 255)
topText.TextScaled = true
topText.Font = Enum.Font.FredokaOne
topText.Parent = background

local statusText = Instance.new("TextLabel")
statusText.Size = UDim2.new(1, 0, 0.05, 0)
statusText.Position = UDim2.new(0, 0, 0.08, 0)
statusText.BackgroundTransparency = 1
statusText.Text = "TrongNguyen Kaitun"
statusText.TextColor3 = Color3.fromRGB(255, 255, 255)
statusText.TextScaled = true
statusText.Font = Enum.Font.FredokaOne
statusText.Parent = background

local timeLabel = Instance.new("TextLabel")
timeLabel.Size = UDim2.new(1, 0, 0.04, 0)
timeLabel.Position = UDim2.new(0, 0, 0.9, 0)
timeLabel.BackgroundTransparency = 1
timeLabel.Text = "Time: 0 Hours 0 Minutes 0 Seconds"
timeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
timeLabel.TextScaled = true
timeLabel.Font = Enum.Font.FredokaOne
timeLabel.Parent = background

local logo = Instance.new("ImageLabel")
logo.Size = UDim2.new(0, 200, 0, 200)
logo.Position = UDim2.new(0.5, -100, 0.4, -100)
logo.BackgroundTransparency = 1
logo.Image = "rbxassetid://ID_IMAGE"
logo.Parent = background

local infoLabel = Instance.new("TextLabel")
infoLabel.Size = UDim2.new(0.95, 0, 0.05, 0)
infoLabel.Position = UDim2.new(0.025, 0, 0.94, 0)
infoLabel.BackgroundTransparency = 1
infoLabel.TextColor3 = Color3.new(1, 1, 1)
infoLabel.TextScaled = true
infoLabel.Font = Enum.Font.FredokaOne
infoLabel.Text = "Loading..."
infoLabel.Parent = background

spawn(function()
	while wait(1) do
		pcall(function()
			local level = player.Data.Level.Value
			local beli = player.Data.Beli.Value
			local frags = player.Data.Fragments.Value
			infoLabel.Text = "Player: " .. player.DisplayName .. " | Level: " .. level .. " | Beli: " .. beli .. " | Fragments: " .. frags
		end)
	end
end)

local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 120, 0, 40)
toggleButton.Position = UDim2.new(0, 15, 0, 70)
toggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.BackgroundTransparency = 0.1
toggleButton.BorderSizePixel = 0
toggleButton.Text = "Open"
toggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
toggleButton.TextScaled = true
toggleButton.Font = Enum.Font.GothamSemibold
toggleButton.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = toggleButton

local isOpen = false
toggleButton.MouseButton1Click:Connect(function()
	isOpen = not isOpen
	background.Visible = isOpen
	toggleButton.Text = isOpen and "Close" or "Open"
end)

local seconds = 0
spawn(function()
	while wait(1) do
		seconds += 1
		local hrs = math.floor(seconds / 3600)
		local mins = math.floor((seconds % 3600) / 60)
		local secs = seconds % 60
		timeLabel.Text = "Time: " .. hrs .. " Hours " .. mins .. " Minutes " .. secs .. " Seconds"
	end
end)
		
local MaxSpeed = 600 -- Studs per second 400 no flag but kick

local LocalPlayer = game:GetService("Players").LocalPlayer
local Locations = workspace._WorldOrigin.Locations

local function getCharacter()
    if not LocalPlayer.Character then
        LocalPlayer.CharacterAdded:Wait()
    end
    LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    return LocalPlayer.Character
end

local function DistanceFromPlrSort(ObjectList: table)
    local RootPart = getCharacter().LowerTorso
    table.sort(ObjectList, function(ChestA, ChestB)
        local RootPos = RootPart.Position
        local DistanceA = (RootPos - ChestA.Position).Magnitude
        local DistanceB = (RootPos - ChestB.Position).Magnitude
        return DistanceA < DistanceB
    end)
end

local UncheckedChests = {}
local FirstRun = true

local function getChestsSorted()
    if FirstRun then
        FirstRun = false
        local Objects = game:GetDescendants()
        for i, Object in pairs(Objects) do
            if Object.Name:find("Chest") and Object.ClassName == "Part" then
                table.insert(UncheckedChests, Object)
            end
        end
    end
    local Chests = {}
    for i, Chest in pairs(UncheckedChests) do
        if Chest:FindFirstChild("TouchInterest") then
            table.insert(Chests, Chest)
        end
    end
    DistanceFromPlrSort(Chests)
    return Chests
end

local function toggleNoclip(Toggle: boolean)
    for i,v in pairs(getCharacter():GetChildren()) do
        if v.ClassName == "Part" then
            v.CanCollide = not Toggle
        end
    end
end

local function Teleport(Goal: CFrame, Speed)
    if not Speed then
        Speed = MaxSpeed
    end
    toggleNoclip(true)
    local RootPart = getCharacter().HumanoidRootPart
    local Magnitude = (RootPart.Position - Goal.Position).Magnitude

    RootPart.CFrame = RootPart.CFrame
    
    while not (Magnitude < 1) do
        local Direction = (Goal.Position - RootPart.Position).unit
        RootPart.CFrame = RootPart.CFrame + Direction * (Speed * wait())
        Magnitude = (RootPart.Position - Goal.Position).Magnitude
    end
    toggleNoclip(false)
end

local function main()
    while wait() do
        local Chests = getChestsSorted()
        if #Chests > 0 then
            Teleport(Chests[1].CFrame)
        else
            -- You can put serverhop here
        end
    end
end

wait = task.wait
main()
-- Script này sẽ kiểm tra nếu trong Workspace có "HolyGrail"
-- thì dừng TextLabel GUI

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
local textLabel = Instance.new("TextLabel", gui)

textLabel.Size = UDim2.new(0, 400, 0, 100)
textLabel.Position = UDim2.new(0.5, -200, 0.1, 0)
textLabel.BackgroundTransparency = 1
textLabel.Text = "Đang chạy script..."
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextScaled = true
textLabel.Font = Enum.Font.SourceSansBold

-- Hàm kiểm tra
local function checkForHolyGrail()
    local holyGrail = game.Workspace:FindFirstChild("HolyGrail") -- thay tên object ở đây
    if holyGrail then
        textLabel.Text = "Ngừng lại vì có Chén Thánh!"
        -- Bạn có thể thêm lệnh để stop hành động ở đây
    else
        textLabel.Text = "Không có Chén Thánh, script chạy tiếp..."
    end
end

-- Kiểm tra mỗi 2 giây
while true do
    checkForHolyGrail()
    task.wait(2)
end