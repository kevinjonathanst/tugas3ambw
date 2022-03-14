import 'fperson.dart';

class DosenTetap extends Person {
  int gajidasar = 0;
  int gajisks = 0;
  int gajitotal = 0;

  DosenTetap(String? nama, int umur, int _gajidasar, int _sks)
      : super(nama, umur) {
    this.gajidasar = _gajidasar;
    this.gajisks = (_sks * 40000);
    this.gajitotal = (this.gajidasar + this.gajisks);
  }
}

class DosenTamu extends Person {
  int gaji = 0;

  DosenTamu(String? nama, int umur, int _gaji) : super(nama, umur) {
    this.gaji = _gaji;
  }
}
