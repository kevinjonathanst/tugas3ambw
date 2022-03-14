import 'dart:io';
import 'csiswa.dart';
import 'fperson.dart';
import 'cdosen.dart';
import 'cstaff.dart';
import 'jobdesk.dart';

void main() {
  var mahasiswa = Siswa("", 0, 0, 0, 0, "");
  var dosenTetap = DosenTetap("", 0, 0, 0);
  var dosenTamu = DosenTamu("", 0, 0);

  var n;
  do {
    if (mahasiswa.nama != "") {
      print('Nama: ${mahasiswa.nama} - SKS: ${mahasiswa.sks}');
    }
    if (dosenTetap.nama != "") {
      print(
          'Nama: ${dosenTetap.nama} - Umur: ${dosenTetap.umur} - Gaji Dasar: ${dosenTetap.gajidasar} - Gaji SKS: ${dosenTetap.gajisks} - Gaji Total: ${dosenTetap.gajitotal}');
    }
    if (dosenTamu.nama != "") {
      print(
          'Nama Dosen Tamu: ${dosenTamu.nama} - Umur: ${dosenTamu.umur} - Gaji: ${dosenTamu.gaji}');
    }

    print("1. Edit Mahasiswa");
    print("2. Edit Dosen");
    n = stdin.readLineSync();

    if (n == '1') {
      var namainput, status;
      var umur = 0;
      var sks = 0;
      var ips = 0.0;
      var ipk = 0.0;
      print("Input Nama Mahasiswa:");
      namainput = stdin.readLineSync();
      print("Input Umur Mahasiswa:");
      umur = int.parse(stdin.readLineSync()!);
      print("Input SKS Mahasiswa:");
      sks = int.parse(stdin.readLineSync()!);
      print("Input IPS Mahasiswa:");
      ips = double.parse(stdin.readLineSync()!);
      print("Input IPK Mahasiswa:");
      ipk = double.parse(stdin.readLineSync()!);
      print("Input Status Mahasiswa:");
      status = stdin.readLineSync();
      mahasiswa = Siswa(namainput, umur, ips, ipk, sks, status);
    }
    if (n == '2') {
      var b, namainput;
      var umur = 0, gajidasar = 0;
      print("1. Dosen Tetap");
      print("2. Dosen Tamu");
      b = stdin.readLineSync();
      if (b == '1') {
        print("Input Nama Dosen Tetap:");
        namainput = stdin.readLineSync();
        print("Input Umur Dosen Tamu:");
        umur = int.parse(stdin.readLineSync()!);
        print("Input Gaji Tetap:");
        gajidasar = int.parse(stdin.readLineSync()!);
        dosenTetap = DosenTetap(namainput, umur, gajidasar, mahasiswa.sks);
      }
      if (b == '2') {
        print("Input Nama Mahasiswa:");
        namainput = stdin.readLineSync();
        print("Input Umur Mahasiswa:");
        umur = int.parse(stdin.readLineSync()!);
      }
    }
  } while (n != 0);
}
