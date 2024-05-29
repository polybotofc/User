-- Skrip ini harus ditempatkan dalam LocalScript di StarterGui

local Players = game:GetService("Players")

local function displayMessage(player)
    local screenGui = Instance.new("ScreenGui", player.PlayerGui)
    local textLabel = Instance.new("TextLabel", screenGui)
    
    textLabel.Text = "Script runned"
    textLabel.Size = UDim2.new(0, 200, 0, 50)
    textLabel.Position = UDim2.new(0.5, -100, 0.5, -25)
    textLabel.BackgroundColor3 = Color3.new(1, 1, 1)
    textLabel.TextColor3 = Color3.new(0, 0, 0)
    
    wait(5) -- Pesan akan hilang setelah 5 detik
    screenGui:Destroy()
end

local mapName = "Murder Mystery 2" -- Ganti dengan nama map yang sebenarnya
local message = "telah bergabung kedalam " .. mapName

Players.PlayerAdded:Connect(function(player)
    displayMessage(player)
    wait(5) -- Tunggu beberapa detik agar pemain sepenuhnya bergabung
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(player.Name .. " " .. message, "All")
end)
