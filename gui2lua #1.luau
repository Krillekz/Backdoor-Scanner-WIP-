-- Gui to Lua
-- Version: 3.2

-- Instances:

local BackdoorScannerGui = Instance.new("ScreenGui")
local ToggleBtn = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local MainFrame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TitleBar = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local CloseBtn = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local DragButton = Instance.new("TextButton")
local StatsFrame = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local StatsLabel = Instance.new("TextLabel")
local ResultsContainer = Instance.new("ScrollingFrame")
local UICorner_6 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local ButtonContainer = Instance.new("Frame")
local ScanBtn = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local ClearBtn = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local ConsoleFrame = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local ConsoleTitle = Instance.new("TextLabel")
local UICorner_10 = Instance.new("UICorner")
local ConsoleScroll = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")

--Properties:

BackdoorScannerGui.Name = "BackdoorScannerGui"
BackdoorScannerGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
BackdoorScannerGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BackdoorScannerGui.ResetOnSpawn = false

ToggleBtn.Name = "ToggleBtn"
ToggleBtn.Parent = BackdoorScannerGui
ToggleBtn.BackgroundColor3 = Color3.fromRGB(80, 120, 200)
ToggleBtn.Position = UDim2.new(0, 10, 0.300000012, -17)
ToggleBtn.Size = UDim2.new(0, 140, 0, 35)
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.Text = "?? Backdoor Scanner"
ToggleBtn.TextColor3 = Color3.fromRGB(240, 240, 250)
ToggleBtn.TextSize = 13.000

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = ToggleBtn

MainFrame.Name = "MainFrame"
MainFrame.Parent = BackdoorScannerGui
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, -240, 0.5, -290)
MainFrame.Size = UDim2.new(0, 480, 0, 580)
MainFrame.Visible = false

UICorner_2.Parent = MainFrame

TitleBar.Name = "TitleBar"
TitleBar.Parent = MainFrame
TitleBar.Active = true
TitleBar.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
TitleBar.BorderSizePixel = 0
TitleBar.Size = UDim2.new(1, 0, 0, 40)

UICorner_3.Parent = TitleBar

Title.Name = "Title"
Title.Parent = TitleBar
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0, 15, 0, 0)
Title.Size = UDim2.new(1, -50, 1, 0)
Title.Font = Enum.Font.GothamBold
Title.Text = "?? Backdoor Scanner"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18.000
Title.TextXAlignment = Enum.TextXAlignment.Left

CloseBtn.Name = "CloseBtn"
CloseBtn.Parent = TitleBar
CloseBtn.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
CloseBtn.Position = UDim2.new(1, -35, 0.5, -14)
CloseBtn.Size = UDim2.new(0, 28, 0, 28)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(0, 6)
UICorner_4.Parent = CloseBtn

DragButton.Name = "DragButton"
DragButton.Parent = TitleBar
DragButton.BackgroundTransparency = 1.000
DragButton.Size = UDim2.new(1, -50, 1, 0)
DragButton.ZIndex = 5
DragButton.Text = ""

StatsFrame.Name = "StatsFrame"
StatsFrame.Parent = MainFrame
StatsFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 42)
StatsFrame.BorderSizePixel = 0
StatsFrame.Position = UDim2.new(0, 0, 0, 325)
StatsFrame.Size = UDim2.new(1, 0, 0, 35)

UICorner_5.CornerRadius = UDim.new(0, 6)
UICorner_5.Parent = StatsFrame

StatsLabel.Name = "StatsLabel"
StatsLabel.Parent = StatsFrame
StatsLabel.BackgroundTransparency = 1.000
StatsLabel.Position = UDim2.new(0, 10, 0, 0)
StatsLabel.Size = UDim2.new(1, -20, 1, 0)
StatsLabel.Font = Enum.Font.Gotham
StatsLabel.Text = "Click 'Scan' to begin"
StatsLabel.TextColor3 = Color3.fromRGB(150, 150, 170)
StatsLabel.TextSize = 14.000
StatsLabel.TextXAlignment = Enum.TextXAlignment.Left

ResultsContainer.Name = "ResultsContainer"
ResultsContainer.Parent = MainFrame
ResultsContainer.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
ResultsContainer.BorderSizePixel = 0
ResultsContainer.Position = UDim2.new(0, 0, 0, 100)
ResultsContainer.Size = UDim2.new(1, 0, 0, 220)
ResultsContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
ResultsContainer.ScrollBarThickness = 6

UICorner_6.CornerRadius = UDim.new(0, 6)
UICorner_6.Parent = ResultsContainer

UIListLayout.Parent = ResultsContainer
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)

UIPadding.Parent = ResultsContainer
UIPadding.PaddingLeft = UDim.new(0, 5)
UIPadding.PaddingRight = UDim.new(0, 5)
UIPadding.PaddingTop = UDim.new(0, 5)

ButtonContainer.Name = "ButtonContainer"
ButtonContainer.Parent = MainFrame
ButtonContainer.BackgroundColor3 = Color3.fromRGB(30, 30, 42)
ButtonContainer.BackgroundTransparency = 1.000
ButtonContainer.Position = UDim2.new(0, 0, 0, 45)
ButtonContainer.Size = UDim2.new(1, 0, 0, 50)

ScanBtn.Name = "ScanBtn"
ScanBtn.Parent = ButtonContainer
ScanBtn.BackgroundColor3 = Color3.fromRGB(80, 120, 200)
ScanBtn.Position = UDim2.new(0, 5, 0, 5)
ScanBtn.Size = UDim2.new(0.5, -10, 1, -10)
ScanBtn.Font = Enum.Font.GothamBold
ScanBtn.Text = "?? Scan"
ScanBtn.TextColor3 = Color3.fromRGB(240, 240, 250)
ScanBtn.TextSize = 14.000

UICorner_7.CornerRadius = UDim.new(0, 6)
UICorner_7.Parent = ScanBtn

ClearBtn.Name = "ClearBtn"
ClearBtn.Parent = ButtonContainer
ClearBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
ClearBtn.Position = UDim2.new(0.5, 5, 0, 5)
ClearBtn.Size = UDim2.new(0.5, -10, 1, -10)
ClearBtn.Font = Enum.Font.GothamBold
ClearBtn.Text = "??? Clear"
ClearBtn.TextColor3 = Color3.fromRGB(240, 240, 250)
ClearBtn.TextSize = 14.000

UICorner_8.CornerRadius = UDim.new(0, 6)
UICorner_8.Parent = ClearBtn

ConsoleFrame.Name = "ConsoleFrame"
ConsoleFrame.Parent = MainFrame
ConsoleFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 22)
ConsoleFrame.BorderSizePixel = 0
ConsoleFrame.Position = UDim2.new(0, 0, 0, 365)
ConsoleFrame.Size = UDim2.new(1, 0, 0, 200)

UICorner_9.Parent = ConsoleFrame

ConsoleTitle.Name = "ConsoleTitle"
ConsoleTitle.Parent = ConsoleFrame
ConsoleTitle.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
ConsoleTitle.Size = UDim2.new(1, 0, 0, 25)
ConsoleTitle.Font = Enum.Font.GothamBold
ConsoleTitle.Text = "  Console Output"
ConsoleTitle.TextColor3 = Color3.fromRGB(240, 240, 250)
ConsoleTitle.TextSize = 14.000
ConsoleTitle.TextXAlignment = Enum.TextXAlignment.Left

UICorner_10.Parent = ConsoleTitle

ConsoleScroll.Name = "ConsoleScroll"
ConsoleScroll.Parent = ConsoleFrame
ConsoleScroll.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
ConsoleScroll.BorderSizePixel = 0
ConsoleScroll.Position = UDim2.new(0, 0, 0, 25)
ConsoleScroll.Size = UDim2.new(1, 0, 1, -25)
ConsoleScroll.ScrollBarThickness = 6

UIListLayout_2.Parent = ConsoleScroll
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 2)