import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:nagarismart/utilities/widget/api_service.dart';
import 'package:nagarismart/utilities/widget/artikelModel.dart';
import 'package:nagarismart/utilities/widget/berita/news_card.dart';
import 'package:nagarismart/utilities/widget/search.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class GetBerita extends StatefulWidget {
  const GetBerita({super.key});

  @override
  State<GetBerita> createState() => _GetBeritaState();
}

class _GetBeritaState extends State<GetBerita> {
  String getGambar = 'https://batipuahateh.desa.id/desa/upload/artikel/kecil_';

  final FetcArtikel _artikelList = FetcArtikel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 240, 235, 235).withOpacity(0.95),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              // leading: const Icon(Icons.newspaper),
              title: const Text(
                "Semua Berita",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.white,
              foregroundColor: Colors.red,
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.search,
                  ),
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: Search(),
                    );
                  },
                ),
              ],
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
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              Expanded(
                flex: 2,
                child: FutureBuilder<List<ArtikelModel>>(
                  future: _artikelList.getArtikel(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          var data = snapshot.data;
                          var date = DateTime.tryParse(data![index].tglUpload);
                          String formatter =
                              DateFormat('yyyy/MM/dd').format(date!);

                          String isiBerita =
                              Bidi.stripHtmlIfNeeded(data[index].isi);
                          var slug = data[index].slug;

                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
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
                              child: NewsCard(
                                imgUrl: getGambar + data[index].gambar,
                                judul: data[index].judul,
                                tgl: formatter,
                                hit: data[index].hit,
                                isi: isiBerita,
                                share: () async {
                                  String url =
                                      "https://batipuahateh.desa.id/artikel/";
                                  await Share.share(
                                    "$url$formatter/$slug",
                                  );
                                },
                              ),
                            ),
                          );
                        },
                      );
                    }

                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailBerita extends StatelessWidget {
  const DetailBerita({super.key, required this.artikelModel});
  final ArtikelModel artikelModel;

  @override
  Widget build(BuildContext context) {
    // final newsCard = ModalRoute.of(context)!.settings.arguments as NewsCard;
    String? getGambar =
        'https://batipuahateh.desa.id/desa/upload/artikel/sedang_';
    String url = "https://batipuahateh.desa.id/artikel/";
    var date = DateTime.tryParse(artikelModel.tglUpload!);
    String formatter = DateFormat(' dd LLLL yyyy ').format(date!);
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 253, 244, 244).withOpacity(0.95),
      body: 
      NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.white,
              foregroundColor: Colors.red,
              elevation: 3.0,
              automaticallyImplyLeading: true,
              expandedHeight: 0,
              floating: true,
              snap: false,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () async {
                    await Share.share(
                      "$url${DateFormat('yyyy/MM/dd').format(date)}/${artikelModel.slug}",
                    );
                  },
                  icon: const Icon(
                    Icons.screen_share_outlined,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    final Uri launcer = Uri.parse(
                        "$url${DateFormat('yyyy/MM/dd').format(date)}/${artikelModel.slug}");
                    launchUrl(launcer, mode: LaunchMode.externalApplication);
                  },
                  icon: const Icon(
                    Icons.ios_share,
                  ),
                ),
              ],
            ),
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
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: '$getGambar${artikelModel.gambar}',
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => Center(
                        child: CircularProgressIndicator(
                            value: downloadProgress.progress),
                      ),
                      errorWidget: (context, url, error) => Container(),
                      maxHeightDiskCache: 250,
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
                      Bidi.stripHtmlIfNeeded(artikelModel.judul!),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.access_time_filled_sharp,
                      color: Colors.red,
                      size: 28,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(formatter),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    Bidi.stripHtmlIfNeeded('${artikelModel.isi}'),
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: '$getGambar${artikelModel.gambar1}',
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => Center(
                          child: CircularProgressIndicator(
                              value: downloadProgress.progress),
                        ),
                        errorWidget: (context, url, error) => Container(),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: '$getGambar${artikelModel.gambar2}',
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => Center(
                          child: CircularProgressIndicator(
                              value: downloadProgress.progress),
                        ),
                        errorWidget: (context, url, error) => Container(),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: '$getGambar${artikelModel.gambar3}',
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => Center(
                          child: CircularProgressIndicator(
                              value: downloadProgress.progress),
                        ),
                        errorWidget: (context, url, error) => Container(),
                      ),
                    ),
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
