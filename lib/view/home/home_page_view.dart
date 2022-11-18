import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nagarismart/auth/bloc/auth_bloc_bloc.dart';
import 'package:nagarismart/constans/webname.dart';
import 'package:nagarismart/utilities/dialog/logout_dialog.dart';
import 'package:nagarismart/utilities/widget/api_service.dart';
import 'package:nagarismart/utilities/widget/artikelModel.dart';
import 'package:nagarismart/utilities/widget/berita/get_berita.dart';
import 'package:nagarismart/utilities/widget/faq/faq.dart';
import 'package:nagarismart/utilities/widget/layanan.dart';
import 'package:nagarismart/utilities/widget/profil/profil.dart';
import 'package:nagarismart/utilities/widget/wali_nagari.dart';
import 'package:flutter/material.dart';
import 'package:nagarismart/view/home/kepala_jorong/jorong.dart';
import 'package:url_launcher/url_launcher.dart';

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
      backgroundColor:
          const Color.fromARGB(255, 253, 244, 244).withOpacity(0.95),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: Text(
                "Batipuah Ateh",
                style: GoogleFonts.poppins().copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
              foregroundColor: Colors.red,
              elevation: 3,
              automaticallyImplyLeading: true,
              expandedHeight: 0,
              floating: true,
              snap: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              actions: [
                IconButton(
                  splashRadius: 1,
                  onPressed: () async {
                    final shouldLogOut = await showLogOutDialog(context);
                    if (shouldLogOut) {
                      context.read<AuthBlocBloc>().add(
                            const AuthEventLogOut(),
                          );
                    }
                  },
                  icon: const Icon(Icons.logout_rounded),
                ),
              ],
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
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
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const Profil(),
                              ));
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Layanan(
                        icon: const Icon(Icons.whatsapp),
                        title: 'No. Penting  ',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const Jorong(),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Layanan(
                        icon: const Icon(Icons.receipt_long),
                        title: 'Semua Berita',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const GetBerita(),
                            ),
                          );
                        },
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
                        icon: const Icon(Icons.fact_check),
                        title: 'Surat Online',
                        onTap: () async {
                          final Uri launcer = Uri.parse(
                            batipuahAtehSurat,
                          );
                          launchUrl(
                            launcer,
                            mode: LaunchMode.externalApplication,
                            webViewConfiguration: const WebViewConfiguration(
                              enableJavaScript: true,
                              enableDomStorage: true,
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Layanan(
                        icon: const Icon(Icons.question_answer),
                        title: 'FAQ',
                        onTap: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const Faq(),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Berita Terkini', style: headlineSmall),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: FutureBuilder<List<ArtikelModel>>(
                    future: _artikelList.getArtikel(),
                    builder: (context, AsyncSnapshot<List?> snapshot) =>
                        snapshot.hasData
                            ? CarouselSlider.builder(
                                itemCount: 3,
                                itemBuilder: (context, index, realIndex) {
                                  var data = snapshot.data!;
                                  var image = '$getGambar${data[index].gambar}';
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
                                      elevation: 3,
                                      shadowColor: Colors.black,
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      margin: const EdgeInsets.fromLTRB(
                                          16, 2, 16, 16),
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                            child: CachedNetworkImage(
                                              key: UniqueKey(),
                                              imageUrl: image,
                                              maxHeightDiskCache: 200,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 250,
                                              fit: BoxFit.cover,
                                              maxWidthDiskCache: 200,
                                              progressIndicatorBuilder:
                                                  (context, url,
                                                          downloadProgress) =>
                                                      Center(
                                                child:
                                                    CircularProgressIndicator(
                                                        value: downloadProgress
                                                            .progress),
                                              ),
                                              errorWidget: (context, url,
                                                      error) =>
                                                  const Center(
                                                      child: Text(
                                                          'Gagal Memuat Gambar')),
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
                                                          blurRadius: 3,
                                                          offset: Offset(3, 3),
                                                          color: Colors.black)
                                                    ],
                                                  ),
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
                                    height: 250,
                                    autoPlay: true,
                                    enlargeCenterPage: false,
                                    viewportFraction: 0.8,
                                    enlargeStrategy:
                                        CenterPageEnlargeStrategy.scale,
                                    initialPage: 2),
                              )
                            : Center(
                                child: Column(
                                  children: const [
                                    CircularProgressIndicator(),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('Memuat Berita...')
                                  ],
                                ),
                              ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
