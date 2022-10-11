import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  String sejarah =
      'Nama Nagari Batipuah berasal dari nama sebatang kayu yang beripuh yang kemudian menjadi Batipuh. Nagari Batipuh dahulunya memiliki wilayah dari Kapalo Koto sampai ke Ekor Koto, yang ditempati oleh 14 niniak yang berasal dari Pariyangan, 7 Niniak di Kapalo Koto dan 7 Niniak di Ekor Koto. Sekitar tahun 1840 dibagi menjadi dua kewalian yaitu Batipuah Ateh (Kapalo Koto) dan Batipuah Baruah (Ekor koto). Niniak nan  7 di Batipuah Ateh menjadi Niniak mamak nan 12 (urang duo kali anam) yang terdiri dari tujuh suku. Niniak mamak nan 12 menjadi panghulu nan 60.';
  String tambahan =
      'Seperti yang terlihat pada peta diatas, batas-batas Nagari Batipuah Ateh adalah sebagai berikut :\n Sebelah Utara berbatas dengan Nagari Sabu dan Andaleh. Sebelah Selatan berbatas dengan Nagari Batipuah Baruah.Sebelah Barat berbatas dengan Nagari Batipuah Baruah dan Andaleh.Sebelah Timur berbatas dengan Kecamatan Pariangan dan Nagari Pitalah.Sedangkan Batas wilayah nagari Batipuh Atas menurut adat :Sebelah Utara berbatas dengan Guguak Batu dan Sandaran Puti.Sebelah Selatan berbatas dengan Batipuh Baruh dan Sitapung Banyak.Sebelah Timur berbatas dengan sa#mak ba#lingka, Labuhan Anjing, Tabek Hitam.Sebelah Barat berbatas dengan Kubu Karikia, Sawah Ranah dan Anak Kayu .';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 240, 235, 235).withOpacity(0.95),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: const Text(
                "Profil",
                style: TextStyle(color: Colors.black),
              ),
              actions: [
                IconButton(
                  onPressed: () async {
                    await Share.share(
                      'https://batipuahateh.desa.id/artikel/2016/8/26/sejarah-desa',
                    );
                  },
                  icon: const Icon(
                    Icons.screen_share_outlined,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    final Uri launcer = Uri.parse(
                        "https://batipuahateh.desa.id/artikel/2016/8/26/sejarah-desa");
                    await launchUrl(launcer,
                        mode: LaunchMode.externalApplication);
                  },
                  icon: const Icon(
                    Icons.ios_share,
                  ),
                ),
              ],
              backgroundColor: Colors.white,
              foregroundColor: Colors.red,
              elevation: 3.0,
              automaticallyImplyLeading: true,
              expandedHeight: 50,
              floating: true,
              snap: true,
              centerTitle: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            )
          ];
        },
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: ListView(
            children: [
              Card(
                elevation: 10,
                shadowColor: Colors.black,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    bottomLeft: Radius.circular(8),
                  ),
                  child: SizedBox(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: const Image(
                      image: AssetImage('assets/profil/profil.jpeg'),
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Sejarah',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        shadows: [
                          const Shadow(
                              blurRadius: 10,
                              offset: Offset(2, 2),
                              color: Color.fromARGB(255, 255, 255, 255))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Text(
                        sejarah,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        tambahan,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextButton(
                        onPressed: () async {
                          final Uri launcer = Uri.parse(
                              "https://batipuahateh.desa.id/artikel/2016/8/26/sejarah-desa");
                          await launchUrl(launcer,
                              mode: LaunchMode.externalApplication);
                        },
                        child: Text(
                          'Baca Selengkapnya Disini',
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 0, 0),
                            shadows: [
                              const Shadow(
                                  blurRadius: 10,
                                  offset: Offset(2, 2),
                                  color: Color.fromARGB(255, 255, 255, 255))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
