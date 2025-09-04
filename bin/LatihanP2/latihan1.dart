import 'dart:io';

void main() {
  stdout.write("Cek Nilai Mahasiswa :");
  int nilaiMahasiswa = int.parse(stdin.readLineSync()!);
  if (nilaiMahasiswa >= 90) {
    print("A");
  } else if (nilaiMahasiswa >= 80) {
    print("B");
  } else if (nilaiMahasiswa >= 70) {
    print("AB");
  } else if (nilaiMahasiswa >= 60) {
    print("C");
  } else if (nilaiMahasiswa >= 50) {
    print("BC");
  } else if (nilaiMahasiswa >= 40) {
    print("D");
  } else {
    print("E");
  }
}