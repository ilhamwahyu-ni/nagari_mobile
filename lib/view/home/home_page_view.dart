import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nagarismart/utilities/widget/api_service.dart';
import 'package:nagarismart/utilities/widget/artikelModel.dart';
import 'package:nagarismart/utilities/widget/berita/get_berita.dart';
import 'package:nagarismart/utilities/widget/layanan.dart';
import 'package:nagarismart/utilities/widget/wali_nagari.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  String getGambar = 'https://batipuahateh.desa.id/desa/upload/artikel/kecil_';

  late FetcArtikel _artikelList;

  @override
  void initState() {
    _artikelList = FetcArtikel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var headlineSmall = Theme.of(context)
        .textTheme
        .titleMedium!
        .copyWith(fontWeight: FontWeight.w600);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WaliNagari(
                  fotoWaliNagari: 'assets/walinagari/pak_wali_.png'),
              const SizedBox(height: 10),
              Text('Layanan Untuk Mu', style: headlineSmall),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Layanan(
                      icon: const Icon(Icons.roofing),
                      title: 'Profil',
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Layanan(
                      icon: const Icon(Icons.fact_check),
                      title: 'Surat Online',
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Layanan(
                      icon: const Icon(Icons.local_library_sharp),
                      title: 'Dukcapil',
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Layanan(
                      icon: const Icon(Icons.nature_people_rounded),
                      title: 'NIB/SKU',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Layanan(
                      icon: const Icon(Icons.event_repeat_rounded),
                      title: 'Samsat',
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Layanan(
                      icon: const Icon(Icons.volunteer_activism_rounded),
                      title: 'Cek Bansos',
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Layanan(
                      icon: const Icon(Icons.whatsapp),
                      title: 'No. Penting  ',
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Layanan(
                      icon: const Icon(Icons.dashboard_customize_sharp),
                      title: 'Lihat Semua',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Berita Terkini', style: headlineSmall),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'More',
                      style: headlineSmall,
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 1,
                child: FutureBuilder<List<ArtikelModel>>(
                  future: _artikelList.getArtikel(),
                  builder: (context, AsyncSnapshot<List?> snapshot) => snapshot
                          .hasData
                      ? CarouselSlider.builder(
                          itemCount: 3,
                          itemBuilder: (context, index, realIndex) {
                            var data = snapshot.data;
                            var date =
                                DateTime.tryParse(data![index].tglUpload);

                            return GestureDetector(
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailBerita(
                                      artikelModel: data[index],
                                    ),
                                  ),
                                )
                              },
                              child: Card(
                                elevation: 4,
                                shadowColor: Colors.black,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                margin:
                                    const EdgeInsets.fromLTRB(16, 2, 16, 16),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      child: Image.network(
                                        getGambar + data[index].gambar,
                                        loadingBuilder:
                                            (context, child, loadingProgress) {
                                          if (loadingProgress == null) {
                                            return child;
                                          } else {
                                            return Center(
                                              child: CircularProgressIndicator(
                                                value: loadingProgress
                                                            .expectedTotalBytes !=
                                                        null
                                                    ? loadingProgress
                                                            .cumulativeBytesLoaded /
                                                        loadingProgress
                                                            .expectedTotalBytes!
                                                    : null,
                                              ),
                                            );
                                          }
                                        },
                                        // height: 200,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill,
                                        cacheWidth: 1000,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8, 0, 8, 20),
                                      child: Column(
                                        children: [
                                          const Spacer(),
                                          Text(
                                            data[index].judul,
                                            softWrap: true,
                                            overflow: TextOverflow.clip,
                                            maxLines: 3,
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                shadows: [
                                                  const Shadow(
                                                      blurRadius: 10,
                                                      offset: Offset(2, 2),
                                                      color: Colors.black)
                                                ]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          options: CarouselOptions(
                            height: 200,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            viewportFraction: 0.7,
                            enlargeStrategy: CenterPageEnlargeStrategy.scale,
                          ),
                        )
                      : const Center(
                          child: CircularProgressIndicator(),
                        ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
