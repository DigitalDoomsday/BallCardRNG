local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
WindUI:SetTheme("Dark")
local workspace = game:GetService("Workspace")

local Window = WindUI:CreateWindow({
	Title = "Ball Card RNG",
	Icon = "volleyball",
	Author = "Black Hole",
	Folder = "CloudHub",
	Size = UDim2.fromOffset(580, 460),
	Transparent = false,
	Theme = "Dark",
	SideBarWidth = 200,
	Background = "",
	User = {
		Enabled = true,
		Anonymous = false,
		Callback = function()
			print("clicked")
		end,
	},
--[[
	KeySystem = {
	Key = { "supercalifragilisticexpialidocious", "FIOY!!" },
	Note = "FIGURE IT OUT YOURSELF!!",
	URL = nil,
	SaveKey = false,
},
--]]
})
local CollectTab = Window:Tab({
	Title = "Collect",
	Icon = "coins",
	Locked = false,
})
local Tab = Window:Tab({
	Title = "Normal World",
	Icon = "earth",
	Locked = false,
})
local OctillionTab = Window:Tab({
	Title = "Octillion World",
	Icon = "diamond",
	Locked = false,
})
local Misc = Window:Tab({
	Title = "Miscellaneous",
	Icon = "book-open",
	Locked = false,
})
local Button = Misc:Button({
	Title = "IY",
	Desc = "Loads Infinite Yield.",
	Locked = false,
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	end
})
local Button = Misc:Button({
	Title = "Black Hole",
	Desc = "Become the owner of the script. (client sided)",
	Locked = false,
	Callback = function()
		local user = game.Players:GetUserIdFromNameAsync("DigitalDoomsday")
		local desc = game.Players:GetHumanoidDescriptionFromUserId(user)
		local char = game.Players.LocalPlayer.Character
		char.Humanoid:RemoveAccessories()
		char.Humanoid:ApplyDescriptionClientServer(desc)
	end
})
local Button = Misc:Button({
	Title = "Restart (update)",
	Desc = "yeah",
	Locked = false,
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/DigitalDoomsday/BallCardRNG/refs/heads/main/ballcardrngmain.lua"))()
		Window:Close():Destroy()
        	--loadstring(game:HttpGet("https://raw.githubusercontent.com/DigitalDoomsday/BallCardRNG/refs/heads/main/ballcardrngmain.lua"))()
	end
})
local Button = CollectTab:Button({
	Title = "Collect All Cards",
	Desc = "Collects all cards within render distance.",
	Locked = false,
	Callback = function()
		for shimmyshimmyyay, part in workspace:GetDescendants() do 
			if string.find(part.Name, "SpawnedSign") or string.find(part.Name, "card") then
				if part:FindFirstChildWhichIsA("ClickDetector") then
					local random = math.random(1, 9)
					local children = part:FindFirstChildWhichIsA("ClickDetector")
					fireclickdetector(children) -- set em on fire 😈😈😈
					print("cardclicked")
				end
			end
		end
	end
})
local Button = CollectTab:Button({
	Title = "Collect All Batteries",
	Desc = "Collects All Batteries (including supercharged batteries)",
	Locked = false,
	Callback = function()
		for shimmyshimmyyay, part in workspace:GetDescendants() do 
			if string.find(part.Name, "superchargedbatterymain2") or string.find(part.Name, "batterymain") then
				if part:FindFirstChildWhichIsA("ClickDetector") then
					local random = math.random(1, 9)
					local children = part:FindFirstChildWhichIsA("ClickDetector")
					fireclickdetector(children) -- set em on fire 😈😈😈
					print("cardclicked")
				end
			end
		end
	end
})
local Button = CollectTab:Button({
	Title = "Collect All Zany Stars",
	Desc = "Collect All Zany Stars (click multiple times!!)",
	Locked = false,
	Callback = function()
		for shimmyshimmyyay, v in workspace:GetDescendants() do 
			if string.find(v.Name, "Zany") and v:IsA("Part") then
				if v:FindFirstChildWhichIsA("ClickDetector") then
					local random = math.random(1, 9)
					local children = v:FindFirstChildWhichIsA("ClickDetector")
					fireclickdetector(children) -- set em on fire 😈😈😈
					print("cardclicked")
				end
			elseif string.find(v.Name, "Staritems2") or string.find(v.Name, "Staritemsdespawn") then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
				v.CanCollide = false
				v.Anchored = true
				local prox = v:FindFirstChildWhichIsA("ProximityPrompt")
				prox.MaxActivationDistance = math.huge
				fireproximityprompt(prox)
			end
		end
	end
})
local Button = CollectTab:Button({
	Title = "Use All Zany Stars in Inventory",
	Desc = "Self-Explanatory.",
	Locked = false,
	Callback = function()
		for i,v in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if string.find(v.Name, "star") then
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
				game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):Activate()
			end
		end
	end
})
local Button = CollectTab:Button({
	Title = "Collect All Fireworks",
	Desc = "Self-Explanatory.",
	Locked = false,
	Callback = function()
		for shimmyshimmyyay, v in workspace:GetDescendants() do 
			if string.find(v.Name, "FireworkDropped") then
				if v:FindFirstChildWhichIsA("ClickDetector") then
					local random = math.random(1, 9)
					local children = v:FindFirstChildWhichIsA("ClickDetector")
					fireclickdetector(children) -- set em on fire 😈😈😈
					print("cardclicked")
				end
			end
		end
	end
})
local Button = CollectTab:Button({
	Title = "Use All Fireworks in Inventory",
	Desc = "Self-Explanatory.",
	Locked = false,
	Callback = function()
		for i,v in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if string.find(v.Name, "Firework") then
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
				game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):Activate()
			end
		end
	end
})
local Button = CollectTab:Button({
	Title = "Collect Meteor",
	Desc = "Collects Viridescent, Energy, and Meteor Shards",
	Locked = false,
	Callback = function()
		for i,v in ipairs(workspace:GetDescendants()) do
			if v.Name == "MeteorShard" or v.Name == "EnergyShard" or v.Name == "MeteorCore" or v.Name == "ViridescentShard" then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
				v.CanCollide = false
				v.Anchored = true
				local prox = v:FindFirstChildWhichIsA("ProximityPrompt")
				prox.MaxActivationDistance = math.huge
				fireproximityprompt(prox)
			end
		end
	end
})
local Button = CollectTab:Button({
	Title = "Collect Epinephrines",
	Desc = "Detects if an Epinephrine exists, if it exists, it will be collected",
	Locked = false,
	Callback = function()
		for i,v in ipairs(workspace:GetDescendants()) do
			if v.Name == "Epinephrine" then
				local cd = v:FindFirstChildWhichIsA("ClickDetector")
				fireclickdetector(cd)
			end
		end
	end
})
local XMoreAttributes = workspace:WaitForChild("MainSpawner9")
local MinimumXAttribute = workspace:WaitForChild("MainSpawneratt")
local XSpawnsXRarity = workspace:WaitForChild("MainSpawner10")
local AutoFarmSelection = "X more attributes"
local AutoFarmToggle
local Button = Tab:Button({
	Title = "Toggle Wandering Trader UI",
	Desc = "Self-Explanatory.",
	Locked = false,
	Callback = function()
		if game.Players.LocalPlayer.PlayerGui.shopwanderingtrader.Enabled == false then
			game.Players.LocalPlayer.PlayerGui.shopwanderingtrader.Enabled = true
		elseif game.Players.LocalPlayer.PlayerGui.shopwanderingtrader.Enabled == true then
			game.Players.LocalPlayer.PlayerGui.shopwanderingtrader.Enabled = false
		end
	end
})
local Button = OctillionTab:Button({
	Title = "Toggle Wandering Trader UI",
	Desc = "Self-Explanatory.",
	Locked = false,
	Callback = function()
		if game.Players.LocalPlayer.PlayerGui.shopwanderingtrader.Enabled == false then
			game.Players.LocalPlayer.PlayerGui.shopwanderingtrader.Enabled = true
		elseif game.Players.LocalPlayer.PlayerGui.shopwanderingtrader.Enabled == true then
			game.Players.LocalPlayer.PlayerGui.shopwanderingtrader.Enabled = false
		end
	end
})
local Button = OctillionTab:Button({
	Title = "Open All Boxes in Inventory",
	Desc = "Self-Explanatory.",
	Locked = false,
	Callback = function()
		for i,v in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if string.find(v.Name, "Box") then
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
				game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):Activate()
			end
		end
	end
})
for i,v in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if string.find(v.Name, "Firework") then
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
				game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):Activate()
			end
		end
local atstorage = false
local Button = OctillionTab:Button({
	Title = "TP to ore storage",
	Desc = "Click again to tp back to spawn",
	Locked = false,
	Callback = function()
		if atstorage == false then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Kelly70371.Head.CFrame * CFrame.new(0, 5, 0)
			atstorage = true
		elseif atstorage == true then 
			atstorage = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.SpawnLocation.CFrame * CFrame.new(0, 5, 0)
		end
	end
})
local Toggle = Tab:Toggle({
	Title = "AutoFarm",
	Desc = "Toggles autofarm which automatically clicks a spawner and collects the card that was spawned.",
	Icon = "check",
	Type = "Checkbox",
	Default = false,
	Callback = function(state) 
		print(state)
		if state == true then
			AutoFarmToggle = true
			spawn(function()
				while wait() do
					if AutoFarmToggle == false then
						break
					elseif AutoFarmSelection == "X more attributes" then
						fireclickdetector(XMoreAttributes.cd)
						wait(1)
						for i,v in ipairs(workspace.Spawnss9:GetChildren()) do
							fireclickdetector(v.cd)
							print(v.cd.Name)
							print(v.cd.Parent)
							print(v.cd.ClassName)
						end
						wait(0.5)
						repeat wait() until XMoreAttributes.Loopertest.Enabled == true
					elseif AutoFarmSelection == "Minimum X Attribute" then
						fireclickdetector(MinimumXAttribute.cd)
						wait(0.1)
						for i,v in ipairs(workspace.s3s:GetChildren()) do
							fireclickdetector(v.cd)
						end
						wait(0.5)
						repeat wait() until MinimumXAttribute.Loopertest.Enabled == true
					elseif AutoFarmSelection == "X spawns X rarity" then
						fireclickdetector(XSpawnsXRarity.cd)
						wait(0.1)
						fireclickdetector(v.cd)
						wait(0.5)
						repeat wait() until XSpawnsXRarity.Loopertest.Enabled == true
					end
				end
			end)
		elseif state == false then
			AutoFarmToggle = false
		end

	end
})

local Dropdown = Tab:Dropdown({
	Title = "AutoFarm Spawners",
	Values = { "X more attributes", "Minimum X Attribute", "X spawns X rarity" },
	Value = "X more attributes",
	Callback = function(option) 
		if option == "X more attributes" then
			print("yeah its x more attributes")
			AutoFarmSelection = "X more attributes"
		elseif option == "Minimum X Attribute" then
			print("yeah its minimum x attribute")
			AutoFarmSelection = "Minimum X Attribute"
		elseif option == "X spawns X rarity" then
			print("yeah its x spawns x rarity")
			AutoFarmSelection = "X spawns X rarity"
		end
	end
})
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-OPEN-SOURCE-Anti-AFK-UNIVERSAL-24032"))
while wait() do
	for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
		if v.ClassName == "ProximityPrompt" then
			v.HoldDuration = 0
		end
	end
end
