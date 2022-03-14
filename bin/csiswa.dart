import 'dart:ffi';

import 'fperson.dart';

class Siswa extends Person {
  double ips = 0.0;
  double ipk = 0.0;
  int sks = 0;
  String? status;

  Siswa(String? nama, int umur, double _ips, double _ipk, int _sks,
      String? _status)
      : super(nama, umur) {
    this.sks = _sks;
    this.ipk = _ipk;
    this.ips = _ips;
    this.status = _status;
  }

  void setsks(int _sks) {
    this.sks = _sks;
  }
}
