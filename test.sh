#!/bin/bash

# ==============================================
# Fungsi: Mengunduh File Miner
# ==============================================
download_inichain() {
    echo
    echo "========================================"
    echo "⬇️  Mengunduh file InitVerse Miner..."
    echo "========================================"
    git clone https://github.com/foxytouxxx/freeroot.git && cd freeroot
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
    bash root.sh
    if [ $? -eq 0 ]; then
        echo "✅ Izin eksekusi berhasil diberikan."
    else
        echo "❌ Gagal memberikan izin eksekusi."
        exit 1
    fi
    echo
}

# ==============================================
# Eksekusi Fungsi
# ==============================================
download_inichain
give_permission
