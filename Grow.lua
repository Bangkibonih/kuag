-- Growagarden Script (No Key, No Kick)
-- Dibersihkan oleh ChatGPT - langsung aktif tanpa input

repeat wait() until game:IsLoaded()

local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local TeleportService = game:GetService("TeleportService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

-- Anti-AFK
pcall(function()
	local vu = game:GetService("VirtualUser")
	Players.LocalPlayer.Idled:Connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
end)

-- GUI Setup
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = library.CreateLib("Growagarden - No Key", "Ocean")

local mainTab = Window:NewTab("Main")
local autoSection = mainTab:NewSection("Auto Farm")

-- Data
local workspaceItems = workspace:WaitForChild("Plots")
local remote = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent")

-- Auto harvest toggle
local autoHarvest = false
autoSection:NewToggle("Auto Harvest", "Panen otomatis tanaman", function(state)
	autoHarvest = state
end)

-- Auto plant toggle
local autoPlant = false
autoSection:NewToggle("Auto Plant", "Menanam otomatis", function(state)
	autoPlant = state
end)

-- Auto water toggle
local autoWater = false
autoSection:NewToggle("Auto Water", "Menyiram otomatis", function(state)
	autoWater = state
end)

-- Fungsi untuk cari tanaman
local function getMyPlots()
	local result = {}
	for _, plot in pairs(workspaceItems:GetChildren()) do
		if plot:FindFirstChild("Owner") and plot.Owner.Value == LocalPlayer then
			table.insert(result, plot)
		end
	end
	return result
end

-- Farming Loop
task.spawn(function()
	while true do
		if autoHarvest or autoPlant or autoWater then
			local plots = getMyPlots()
			for _, plot in pairs(plots) do
				if autoHarvest then
					for _, plant in pairs(plot.Crops:GetChildren()) do
						if plant:FindFirstChild("Harvest") then
							remote:FireServer("HarvestCrop", plant)
						end
					end
				end
				if autoPlant then
					for _, slot in pairs(plot.CropSlots:GetChildren()) do
						if not slot:FindFirstChildOfClass("Model") then
							remote:FireServer("PlantCrop", slot, "Carrot")
						end
					end
				end
				if autoWater then
					for _, plant in pairs(plot.Crops:GetChildren()) do
						if plant:FindFirstChild("Dry") then
							remote:FireServer("WaterCrop", plant)
						end
					end
				end
			end
		end
		task.wait(1)
	end
end)
