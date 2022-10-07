class ArtikelModel {
  String? judul;
  String? id;
  String? gambar;
  String? isi;
  String? tglUpload;
  String? slug;
  String? gambar1;
  String? gambar2;
  String? gambar3;
  String? hit;
  String? kategori;

  ArtikelModel(
      {this.judul,
      this.id,
      this.gambar,
      this.isi,
      this.tglUpload,
      this.slug,
      this.gambar1,
      this.gambar2,
      this.gambar3,
      this.hit,
      this.kategori});

  ArtikelModel.fromJson(Map<String, dynamic> json) {
    judul = json['judul'];
    id = json['id'];
    gambar = json['gambar'];
    isi = json['isi'];
    tglUpload = json['tgl_upload'];
    slug = json['slug'];
    gambar1 = json['gambar1'];
    gambar2 = json['gambar2'];
    gambar3 = json['gambar3'];
    hit = json['hit'];
    kategori = json['kategori'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['judul'] = judul;
    data['id'] = id;
    data['gambar'] = gambar;
    data['isi'] = isi;
    data['tgl_upload'] = tglUpload;
    data['slug'] = slug;
    data['gambar1'] = gambar1;
    data['gambar2'] = gambar2;
    data['gambar3'] = gambar3;
    data['hit'] = hit;
    data['kategori'] = kategori;
    return data;
  }
}
