import 'dart:io';

void main() {
  while (true) {
    print("\n=== KALKULATOR SEDERHANA ===");
    print("1. Tambah (+)");
    print("2. Kurang (-)");
    print("3. Kali (×)");
    print("4. Bagi (÷)");
    print("5. Modulus (%)");
    print("6. Keluar");
    stdout.write("Pilih operasi (1-6): ");
    String? pilihan = stdin.readLineSync();

    if (pilihan == '6') {
      print("Terima kasih, program selesai.");
      break;
    }

    stdout.write("Masukkan angka pertama: ");
    double a = double.parse(stdin.readLineSync()!);

    stdout.write("Masukkan angka kedua: ");
    double b = double.parse(stdin.readLineSync()!);

    double hasil = 0;

    switch (pilihan) {
      case '1':
        hasil = a + b;
        print("Hasil: $a + $b = $hasil");
        break;
      case '2':
        hasil = a - b;
        print("Hasil: $a - $b = $hasil");
        break;
      case '3':
        hasil = a * b;
        print("Hasil: $a × $b = $hasil");
        break;
      case '4':
        if (b != 0) {
          hasil = a / b;
          print("Hasil: $a ÷ $b = $hasil");
        } else {
          print("Error: tidak bisa dibagi dengan nol!");
        }
        break;
      case '5':
        if (b != 0) {
          int mod = a.toInt() % b.toInt();
          print("Hasil: ${a.toInt()} % ${b.toInt()} = $mod");
        } else {
          print("Error: modulus dengan nol tidak valid!");
        }
        break;
      default:
        print("Pilihan tidak valid!");
    }
  }
}

