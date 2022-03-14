import 'fperson.dart';

class Staff extends Person {
  int jatahcuti = 12;
  int gaji = 0;
  int tunjangan = 0;

  Staff(String? nama, int umur, int _jatahcuti, int _gaji, int _tunjangan)
      : super(nama, umur);
}
