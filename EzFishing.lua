local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remote = ReplicatedStorage:FindFirstChild("CreateRewardInfoEvent", true)

print("--- EZFISHING v13: BRUTE-FORCE REWARD ---")

local function KirimHadiah(data)
    for i = 1, 100 do
        task.spawn(function()
            Remote:FireServer(data)
        end)
    end
end

print("TEKAN TOMBOL BERIKUT UNTUK TEST:")
print("[U] - Kirim 'true'")
print("[I] - Kirim '1'")
print("[O] - Kirim '{}' (Tabel Kosong)")

game:GetService("UserInputService").InputBegan:Connect(function(input, gpe)
    if gpe then return end
    if input.KeyCode == Enum.KeyCode.U then
        print("Mencoba Brute-force: true")
        KirimHadiah(true)
    elseif input.KeyCode == Enum.KeyCode.I then
        print("Mencoba Brute-force: 1")
        KirimHadiah(1)
    elseif input.KeyCode == Enum.KeyCode.O then
        print("Mencoba Brute-force: {}")
        KirimHadiah({})
    end
end)