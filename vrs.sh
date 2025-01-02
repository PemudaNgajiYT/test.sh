#!/bin/bash

# URL untuk mengunduh file
INIMINER_URL="https://github.com/foxytouxxx/freeroot"

# Nama file miner
INIMINER_FILE="freeroot"

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
# Eksekusi Fungsi
# ==============================================
download_inichain

echo
echo "========================================"
echo "🎉 Selesai! InitVerse Miner telah diatur dan berjalan."
echo "========================================"
