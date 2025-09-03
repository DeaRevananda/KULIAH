import 'dart:io';
void main() {
  stdout.write("Masukkan nama karyawan: ");
  String? nama = stdin.readLineSync();

  stdout.write("Masukkan jumlah jam kerja per minggu: ");
  int jamKerja = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan upah per jam: ");
  double upahPerJam = double.parse(stdin.readLineSync()!);

  stdout.write("Apakah karyawan tetap? (y/n): ");
  String? statusInput = stdin.readLineSync();
  bool statusTetap = (statusInput?.toLowerCase() == "y");

  double gajiKotor = jamKerja * upahPerJam;

  double pajak = statusTetap ? gajiKotor * 0.10 : gajiKotor * 0.05;

  double gajiBersih = gajiKotor - pajak;

  print("Slip Gaji Karyawan");
  print("Nama Karyawan : $nama");
  print("Jam Kerja     : $jamKerja jam");
  print("Upah per Jam  : Rp$upahPerJam");
  print("Status        : ${statusTetap ? "Tetap" : "Kontrak"}");
  print("-------------------------------");
  print("Gaji Kotor    : Rp$gajiKotor");
  print("Pajak         : Rp$pajak");
  print("Gaji Bersih   : Rp$gajiBersih");
}
