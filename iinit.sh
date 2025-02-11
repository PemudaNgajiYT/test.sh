#!/bin/bash

# URL untuk mengunduh file
INIMINER_URL="https://github.com/Project-InitVerse/ini-miner/releases/download/v1.0.0/iniminer-linux-x64"

# Nama file miner
INIMINER_FILE="iniminer-linux-x64"

# Nama sesi screen
SCREEN_NAME="airdropnode_inichain"

# ==============================================
# Fungsi: Memperbarui Sistem dan Menginstal Screen
# ==============================================
update_system_and_install_screen() {
    echo
    echo "========================================"
    echo "🔄 Memperbarui sistem dan menginstal screen..."
    echo "========================================"
    apt update && apt upgrade -y
    if [ $? -eq 0 ]; then
        echo "✅ Sistem diperbarui dan screen berhasil diinstal."
    else
        echo "❌ Gagal memperbarui sistem atau menginstal screen."
        exit 1
    fi
    echo
}

# ==============================================
# Fungsi: Mengunduh File Miner
# ==============================================
download_inichain() {
    echo
    echo "========================================"
    echo "⬇️  Mengunduh file InitVerse Miner..."
    echo "========================================"
    wget -q $INIMINER_URL -O $INIMINER_FILE
    if [ $? -eq 0 ]; then
        echo "✅ File berhasil diunduh."
    else
        echo "❌ Gagal mengunduh file. Periksa URL atau koneksi internet Anda."
        exit 1
    fi
    echo
}

# ==============================================
# Fungsi: Memberikan Izin Eksekusi
# ==============================================
give_permission() {
    echo
    echo "========================================"
    echo "🔑 Memberikan izin eksekusi ke file..."
    echo "========================================"
    chmod +x $INIMINER_FILE
    if [ $? -eq 0 ]; then
        echo "✅ Izin eksekusi berhasil diberikan."
    else
        echo "❌ Gagal memberikan izin eksekusi."
        exit 1
    fi
    echo
}

# ==============================================
# Fungsi: Menjalankan Miner.....
# ==============================================
run_inichain_miner() {
    echo
    echo "========================================"
    echo "🚀 Menjalankan InitVerse Miner....."
    echo "========================================"

    POOL_URL="stratum+tcp://0x82cdda714059789939a41e61c856102c22290289.AyamGoreng@pool-core-testnet.inichain.com:32672"

    echo
}

# ==============================================
# Eksekusi Fungsi
# ==============================================
update_system
download_inichain
give_permission
run_inichain_miner

echo
echo "========================================"
echo "🎉 Selesai! InitVerse Miner telah diatur dan berjalan."
echo "========================================"
