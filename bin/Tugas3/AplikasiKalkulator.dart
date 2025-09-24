import 'dart:io';

double tambah(double a, double b) => a + b;
double kurang(double a, double b) => a - b;
double kali(double a, double b) => a * b;
double bagi(double a, double b) {
  if (b == 0) {
    print("Error: Tidak bisa membagi dengan nol!");
    return double.nan;
  }
  return a / b;
}
void cetakHasil(double hasil) {
  if (hasil.isNaN) return;
  if (hasil % 1 == 0) {
    print("Hasil: ${hasil.toInt()}"); 
  } else {
    print("Hasil: $hasil"); 
  }
}

void main() {
  while (true) {
    print("Kalkulator Sederhana");
    print("1. Penjumlahan");
    print("2. Pengurangan");
    print("3. Perkalian");
    print("4. Pembagian");
    print("5. Keluar");
    stdout.write("Pilih operasi (1-5): ");
    int pilihan = int.parse(stdin.readLineSync()!);

    if (pilihan == 5) {
      print("Terima kasih, program selesai.");
      break;
    }

    stdout.write("Masukkan angka pertama: ");
    double a = double.parse(stdin.readLineSync()!);
    stdout.write("Masukkan angka kedua: ");
    double b = double.parse(stdin.readLineSync()!);

    switch (pilihan) {
      case 1:
        cetakHasil(tambah(a, b));
        break;
      case 2:
        cetakHasil(kurang(a, b));
        break;
      case 3:
        cetakHasil(kali(a, b));
        break;
      case 4:
        cetakHasil(bagi(a, b));
        break;
      default:
        print("Pilihan tidak valid.");
    }
  }
}
