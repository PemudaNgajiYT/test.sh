#!/bin/bash
# ==============================================
# Fungsi: Mengunduh File Miner
# ==============================================
download_inichain() {
    echo
    echo "========================================"
    echo "⬇️  Mengunduh file free root..."
    echo "========================================"
    wget https://github.com/foxytouxxx/freeroot.git 
    cd freeroot 
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
