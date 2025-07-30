-- Growagarden Script - Bypass Key, All Features Enabled

-- Load Kavo UI
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local window = library.CreateLib("Growagarden - No Key", "Ocean")

-- Buat tab dan section
local mainTab = window:NewTab("Main")
local mainSection = mainTab:NewSection("Auto Farm")

-- Auto Harvest
mainSection:NewToggle("Auto Harvest", "Auto panen tanaman", function(state)
    _G.AutoHarvest = state
    while _G.AutoHarvest do
        for _,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
            if v.Name == "ClickDetector" then
                fireclickdetector(v)
            end
        end
        task.wait(0.5)
    end
end)

-- Auto Plant
mainSection:NewToggle("Auto Plant", "Auto tanam", function(state)
    _G.AutoPlant = state
    while _G.AutoPlant do
        game:GetService("ReplicatedStorage").Events.Farming.Plant:FireServer("Carrot")
        task.wait(0.5)
    end
end)

-- Auto Water
mainSection:NewToggle("Auto Water", "Auto siram", function(state)
    _G.AutoWater = state
    while _G.AutoWater do
        game:GetService("ReplicatedStorage").Events.Farming.Water:FireServer()
        task.wait(0.5)
    end
end)

-- Anti-AFK
pcall(function()
	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:Connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
end)

