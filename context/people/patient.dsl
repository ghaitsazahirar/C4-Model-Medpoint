pPatient = person "User" {
    description "Pengguna yang melakukan reservasi medis, membatalkan reservasi, transaksi, dan menerima notifikasi" 

    -> comMobileLogin "User bisa mengakses sistem untuk melakukan reservasi, melihat dokter dan jadwal reservasi, melakukan pembayaran"
    -> comMobileRegister "User can Register an accont using Form Register to access Mobile Apps"
}

pAdmin = person "Admin" {
    description "Pengelola data master, jadwal, slot reservasi, dan pembayaran"
    -> ssMedpoint "Mengelola data master, jadwal, slot reservasi, dan pembayaran"

    -> comWebMobile "Admin Mengelola data master, jadwal, slot reservasi, dan pembayaran"
}

pDokter = person "Dokter" {
    description "Penyedia slot reservasi, setuju reservasi, ngasih konsultasi dan resep obat."
    -> ssMedpoint "bisa mengelola sesi konsultasi dan reservasi"

    -> comWebMobile "Dokter bisa mengelola sesi konsultasi dan reservasi"
}

psuperAdmin = person "Super Admin" {
    description "pengelola semua data master dan hak akses pengguna"
    -> ssMedpoint "melakukan pengelolaan semua data master dan hak akses pengguna"

    -> comWebMobile "Super Admin bisa melakukan pengelolaan semua data master dan hak akses pengguna"
}