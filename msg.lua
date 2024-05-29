-- Pastikan Arceus X sudah terinstal dan Anda telah mendapatkan kunci untuk eksekusi

local mapName = "Murder Mystery 2" -- Ganti dengan nama map yang sebenarnya
local message = "telah bergabung kedalam " .. mapName

game.Players.PlayerAdded:Connect(function(player)
    wait(5) -- Tunggu beberapa detik agar pemain sepenuhnya bergabung
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(player.Name .. " " .. message, "All")
end)
