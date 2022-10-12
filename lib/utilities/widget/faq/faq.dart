import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Faq extends StatefulWidget {
  const Faq({super.key});

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 253, 244, 244).withOpacity(0.95),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            const SliverAppBar(
              title: Text('Sering Ditanyakan'),
              centerTitle: true,
              backgroundColor: Colors.white,
              foregroundColor: Colors.red,
              elevation: 3.0,
              automaticallyImplyLeading: true,
              expandedHeight: 0,
              floating: true,
              snap: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: tile.map(buildTile).toList(),
          ),
        ),
      ),
    );
  }

  Widget buildTile(FaqModel tile) {
    return Card(
      elevation: 3,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: ExpansionTile(
        title: Text(tile.title),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(17, 0, 17, 17),
            child: Text(tile.keterangan),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(17, 0, 17, 17),
            child: Row(
              children: [
                const Text('Hubungi : '),
                ElevatedButton(
                  onPressed: () async {
                    var whatsapp = "whatsapp://send?phone=${tile.wa}&text=";
                    final Uri wa = Uri.parse(whatsapp);
                    await launchUrl(wa);
                  },
                  child: const Icon(Icons.whatsapp),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () async {
                      var whatsapp = "whatsapp://send?phone=${tile.wa2}&text=";
                      final Uri wa = Uri.parse(whatsapp);
                      await launchUrl(wa);
                    },
                    child: const Icon(Icons.whatsapp))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FaqModel {
  final String title;
  final String keterangan;
  final String? wa, wa2;

  FaqModel({
    required this.title,
    required this.keterangan,
    required this.wa,
    required this.wa2,
  });
}

final tile = <FaqModel>[
  FaqModel(
    title: 'Bagaimana Cara Menggunakan Layanan Surat Online?',
    keterangan:
        'Silahkan masukkan NIK dan PIN Untuk Menggunakan Seluruh Layanan. Layanan Berupa Buat Surat,Ganti PIN layanan dan sebagainya',
    wa: null,
    wa2: null,
  ),
  FaqModel(
    title: 'Bagaimana Cara Saya mendapatkan PIN Layanan?',
    keterangan:
        'Pertama Pastikan Dokumen Kependudukan Anda Terdaftar Di nagari Batipuah Ateh, Kemudian Silahkan Minta PIN Pada Operator Nagari  dengan Klik Nomor WhatsApp Dibawah',
    wa: "+6282323066956",
    wa2: "+6282174515261",
  ),
  FaqModel(
    title: 'Bagaimana Cara Menggunakan Layanan Dukcapil?',
    keterangan:
        'Cara Pertama  : Pastikan Anda Memiliki E-mail Aktif kemudian Lakukan Registrasi Pada Aplikasi OaseDukcapilTanahDatar jika Registrasi berhasil silahkan pilih layanan yang di inginkan kemudian foto seluruh dokumen administrasi seperti KK,KTP,ijazah,Buku Nikah,Surat Pindah,F1,01,KeteranganLahir,    Cara Kedua Layanan Dengan Petugas Registrasi Nagari (PRN).',
    wa: "6282387807523",
    wa2: null,
  ),
  FaqModel(
    title: 'Surat Pindah Nagari, F1.01,F1.03?',
    keterangan:
        'Silahkan Ke Kantor Wali Nagari Atau Hubungi Balngko hanya tersedia di kantor',
    wa: "+6282387807523",
    wa2: null,
  ),
  FaqModel(
    title: 'Bagaimana cara membuat NIB atau SKU?',
    keterangan:
        'Anda Bisa mendaftar lansung dengan memakai Nomor WhatsApp atau E-mail yang Aktif, juga bisa Lihat Panduan di Websiter OSS.go.id, Jika butuh Bantuan silahkan datang ke kantor wali Nagari',
    wa: "+6282387807523",
    wa2: null,
  ),
];
