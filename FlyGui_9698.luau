--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 8 | Scripts: 1 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.FlyGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[FlyGui]];
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.FlyGui.FlyScript
G2L["2"] = Instance.new("LocalScript", G2L["1"]);
G2L["2"]["Name"] = [[FlyScript]];


-- StarterGui.FlyGui.MainFrame
G2L["3"] = Instance.new("Frame", G2L["1"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["3"]["Size"] = UDim2.new(0, 200, 0, 100);
G2L["3"]["Position"] = UDim2.new(0.5, -100, 0.1, 0);
G2L["3"]["Name"] = [[MainFrame]];


-- StarterGui.FlyGui.MainFrame.UICorner
G2L["4"] = Instance.new("UICorner", G2L["3"]);
G2L["4"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.FlyGui.MainFrame.Title
G2L["5"] = Instance.new("TextLabel", G2L["3"]);
G2L["5"]["TextSize"] = 20;
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["BackgroundTransparency"] = 1;
G2L["5"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["5"]["Text"] = [[FE Fly]];
G2L["5"]["Name"] = [[Title]];


-- StarterGui.FlyGui.MainFrame.FlyButton
G2L["6"] = Instance.new("TextButton", G2L["3"]);
G2L["6"]["TextSize"] = 18;
G2L["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["6"]["Size"] = UDim2.new(0.8, 0, 0, 40);
G2L["6"]["Text"] = [[Fly: OFF]];
G2L["6"]["Name"] = [[FlyButton]];
G2L["6"]["Position"] = UDim2.new(0.1, 0, 0.5, 0);


-- StarterGui.FlyGui.MainFrame.FlyButton.UICorner
G2L["7"] = Instance.new("UICorner", G2L["6"]);



-- StarterGui.FlyGui.MainFrame.SpeedLabel
G2L["8"] = Instance.new("TextLabel", G2L["3"]);
G2L["8"]["TextSize"] = 12;
G2L["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["8"]["BackgroundTransparency"] = 1;
G2L["8"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["8"]["Text"] = [[Speed: 50 (Scroll to adjust)]];
G2L["8"]["Name"] = [[SpeedLabel]];
G2L["8"]["Position"] = UDim2.new(0, 0, 0.8, 0);


-- StarterGui.FlyGui.FlyScript
local function C_2()
local script = G2L["2"];
	local Players = game:GetService("Players")
	local UserInputService = game:GetService("UserInputService")
	
	local player = Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:WaitForChild("Humanoid")
	local rootPart = character:WaitForChild("HumanoidRootPart")
	
	local gui = script.Parent
	local frame = gui:WaitForChild("MainFrame")
	local flyButton = frame:WaitForChild("FlyButton")
	local speedLabel = frame:WaitForChild("SpeedLabel")
	
	-- Fly settings
	local flying = false
	local flySpeed = 50
	local maxSpeed = 200
	local minSpeed = 10
	
	-- BodyMover for flying
	local bodyVelocity = Instance.new("BodyVelocity")
	bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	bodyVelocity.Velocity = Vector3.new(0, 0, 0)
	
	local bodyGyro = Instance.new("BodyGyro")
	bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
	bodyGyro.P = 9e4
	bodyGyro.D = 1000
	
	-- Update character reference on respawn
	player.CharacterAdded:Connect(function(newCharacter)
	    character = newCharacter
	    humanoid = character:WaitForChild("Humanoid")
	    rootPart = character:WaitForChild("HumanoidRootPart")
	    
	    if flying then
	        bodyVelocity.Parent = rootPart
	        bodyGyro.Parent = rootPart
	    end
	end)
	
	-- Toggle fly function
	local function toggleFly()
	    flying = not flying
	    
	    if flying then
	        flyButton.Text = "Fly: ON"
	        flyButton.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
	        
	        -- Enable fly
	        bodyVelocity.Parent = rootPart
	        bodyGyro.Parent = rootPart
	        humanoid.PlatformStand = true
	    else
	        flyButton.Text = "Fly: OFF"
	        flyButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	        
	        -- Disable fly
	        bodyVelocity.Parent = nil
	        bodyGyro.Parent = nil
	        humanoid.PlatformStand = false
	    end
	end
	
	-- Fly update loop
	local function flyUpdate()
	    while task.wait() do
	        if flying and rootPart then
	            local camera = workspace.CurrentCamera
	            local moveDirection = Vector3.new(0, 0, 0)
	            
	            -- Get movement input
	            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
	                moveDirection = moveDirection + camera.CFrame.LookVector
	            end
	            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
	                moveDirection = moveDirection - camera.CFrame.LookVector
	            end
	            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
	                moveDirection = moveDirection - camera.CFrame.RightVector
	            end
	            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
	                moveDirection = moveDirection + camera.CFrame.RightVector
	            end
	            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
	                moveDirection = moveDirection + Vector3.new(0, 1, 0)
	            end
	            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
	                moveDirection = moveDirection - Vector3.new(0, 1, 0)
	            end
	            
	            -- Apply velocity
	            if moveDirection.Magnitude > 0 then
	                moveDirection = moveDirection.Unit * flySpeed
	            end
	            
	            bodyVelocity.Velocity = moveDirection
	            bodyGyro.CFrame = camera.CFrame
	        end
	    end
	end
	
	-- Speed adjustment with scroll wheel
	UserInputService.InputChanged:Connect(function(input)
	    if input.UserInputType == Enum.UserInputType.MouseWheel then
	        local delta = input.Position.Z
	        
	        -- Only adjust if mouse is over the GUI
	        local mouse = player:GetMouse()
	        if mouse.X >= frame.AbsolutePosition.X and mouse.X <= frame.AbsolutePosition.X + frame.AbsoluteSize.X
	            and mouse.Y >= frame.AbsolutePosition.Y and mouse.Y <= frame.AbsolutePosition.Y + frame.AbsoluteSize.Y then
	            
	            if delta > 0 then
	                flySpeed = math.min(flySpeed + 5, maxSpeed)
	            else
	                flySpeed = math.max(flySpeed - 5, minSpeed)
	            end
	            
	            speedLabel.Text = "Speed: " .. flySpeed .. " (Scroll to adjust)"
	        end
	    end
	end)
	
	-- Button click event
	flyButton.MouseButton1Click:Connect(toggleFly)
	
	-- Start fly update loop
	coroutine.wrap(flyUpdate)()
	
	-- Make GUI draggable
	local dragging = false
	local dragStart, startPos
	
	frame.InputBegan:Connect(function(input)
	    if input.UserInputType == Enum.UserInputType.MouseButton1 and input.UserInputState == Enum.UserInputState.Begin then
	        if not frame.AbsolutePosition then return end
	        dragging = true
	        dragStart = input.Position
	        startPos = frame.Position
	    end
	end)
	
	frame.InputChanged:Connect(function(input)
	    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
	        local delta = input.Position - dragStart
	        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	    end
	end)
	
	frame.InputEnded:Connect(function(input)
	    if input.UserInputType == Enum.UserInputType.MouseButton1 then
	        dragging = false
	    end
	end)
end;
task.spawn(C_2);

return G2L["1"], require;