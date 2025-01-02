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
    sudo apt update && sudo apt upgrade -y
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
# Fungsi: Menjalankan Miner dalam Screen
# ==============================================
run_inichain_miner() {
    echo
    echo "========================================"
    echo "🚀 Menjalankan InitVerse Miner dalam screen..."
    echo "========================================"
    # Validasi input
    if [[ -z "$0x82cdda714059789939a41e61c856102c22290289" || -z "$AyamGoreng" ]]; then
        echo "❌ Alamat dompet atau nama Worker tidak boleh kosong."
        exit 1
    fi

    POOL_URL="stratum+tcp://${WALLET_ADDRESS}.${WORKER_NAME}@pool-core-testnet.inichain.com:32672"

    screen -dmS $SCREEN_NAME ./$INIMINER_FILE --pool $POOL_URL
    if [ $? -eq 0 ]; then
        echo "✅ InitVerse Miner sedang berjalan dalam sesi screen bernama '$SCREEN_NAME'."
        echo "ℹ️  Gunakan perintah berikut untuk memantau:"
        echo "   screen -r $SCREEN_NAME"
    else
        echo "❌ Gagal menjalankan InitVerse Miner."
        exit 1
    fi
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
