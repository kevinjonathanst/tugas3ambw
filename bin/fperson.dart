class Person {
  String? nama;
  int umur = 0;

  Person(this.nama, this.umur);

  set _nama(String _nama) {
    nama = _nama;
  }

  set _umur(int _umur) {
    umur = _umur;
  }
}
