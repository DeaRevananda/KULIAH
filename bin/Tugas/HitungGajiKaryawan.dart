void main() {
  String namaKaryawan = "Dea Revananda";
  int jamKerja = 45;
  double upahPerJam = 100000;
  bool statusTetap = true; 

  double gajiKotor = jamKerja * upahPerJam;

  double pajak = gajiKotor * (statusTetap ? 0.10 : 0.05);

  double gajiBersih = gajiKotor - pajak;

  print("Slip Gaji Karyawan");
  print("Nama Karyawan : $namaKaryawan");
  print("Status        : ${statusTetap ? "Tetap" : "Kontrak"}");
  print("Jam Kerja     : $jamKerja jam/minggu");
  print("Upah per Jam  : Rp ${upahPerJam.toStringAsFixed(0)}");
  print("Gaji Kotor    : Rp ${gajiKotor.toStringAsFixed(0)}");
  print("Pajak         : Rp ${pajak.toStringAsFixed(0)}");
  print("Gaji Bersih   : Rp ${gajiBersih.toStringAsFixed(0)}");
}

