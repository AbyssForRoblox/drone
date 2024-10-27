local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Drone Simulator Script by abyss", "DarkTheme")
local Tab = Window:NewTab("Exploits")
local Section = Tab:NewSection("Exploit Buttons")

Section:NewButton("Get 9B Money", "Gives you 9 billion money", function()
    local args = {
        [1] = "ChangeDataStore",
        [2] = game:GetService("Players").LocalPlayer.leaderstats.Money,
        [3] = 9e9
    }
    game:GetService("ReplicatedStorage").Game.Events.ServerDroneHandler:FireServer(unpack(args))
end)

Section:NewButton("Get 9B Money For All", "Gives everyone 9 billion money", function()
    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
        local args = {
            [1] = "ChangeDataStore",
            [2] = player.leaderstats.Money,
            [3] = 9e9
        }
        game:GetService("ReplicatedStorage").Game.Events.ServerDroneHandler:FireServer(unpack(args))
    end
end)

Section:NewButton("Get 9B Spins", "Gives you 9 billion spins", function()
    local args = {
        [1] = "AddDataStore",
        [2] = "Spins",
        [3] = 9e9
    }
    game:GetService("ReplicatedStorage").Game.Events.ServerDroneHandler:FireServer(unpack(args))
end)

Section:NewButton("Get 9B Spins For All", "Gives everyone 9 billion spins", function()
    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
        local args = {
            [1] = "AddDataStore",
            [2] = "Spins",
            [3] = 9e9
        }
        game:GetService("ReplicatedStorage").Game.Events.ServerDroneHandler:FireServer(unpack(args))
    end
end)

Section:NewButton("Kick All Players", "Kicks everyone by giving them math.huge money and spins", function()
    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
        if player ~= game:GetService("Players").LocalPlayer then -- ik doesnt work
            local argsMoney = {
                [1] = "ChangeDataStore",
                [2] = player.leaderstats.Money,
                [3] = math.huge
            }
            game:GetService("ReplicatedStorage").Game.Events.ServerDroneHandler:FireServer(unpack(argsMoney))
            
            local argsSpins = {
                [1] = "AddDataStore",
                [2] = "Spins",
                [3] = math.huge
            }
            game:GetService("ReplicatedStorage").Game.Events.ServerDroneHandler:FireServer(unpack(argsSpins))
        end
    end
end)
