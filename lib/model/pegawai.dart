class Pegawai {
  String? id;
  String nip;
  String namaPegawai;
  String tanggalLahir;
  String nomorTelepon;
  String email;
  String password;

  Pegawai(
      {this.id,
      required this.nip,
      required this.namaPegawai,
      required this.tanggalLahir,
      required this.nomorTelepon,
      required this.email,
      required this.password});
}
