import 'dart:io';
import 'cdosen.dart';
import 'csiswa.dart';

class Jobdesk {
  String jobdesk() {
    return '';
  }
}

mixin PrintMahasiswa {
  void printmahasiswa() {
    var b;
    print("1. Edit SKS");
    print("2. Cek Status");
    print("3. Pengambilan SKS");
    print("4. Masukkan IPS");
    print("5. Cek IPK");
    b = stdin.readLineSync();

    if (b == 1) {
      var editsks;
      print("Minimal mengambil 2 sks dan maksimal 24");
      editsks = stdin.readLineSync();
    }
  }
}
