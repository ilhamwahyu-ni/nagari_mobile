import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:nagarismart/utilities/widget/api_service.dart';
import 'package:nagarismart/utilities/widget/artikelModel.dart';
import 'package:nagarismart/utilities/widget/berita/news_card.dart';
import 'package:nagarismart/utilities/widget/search.dart';
import 'package:share_plus/share_plus.dart';

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
    var headlineSmall = Theme.of(context)
        .textTheme
        .titleMedium!
        .copyWith(fontWeight: FontWeight.w600);
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.05),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              leading: const Icon(Icons.newspaper, color: Colors.black45),
              title: const Text(
                "Semua Berita",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.white,
              actions: [
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.black45),
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: Search(),
                    );
                  },
                ),
              ],
              elevation: 3.0,
              automaticallyImplyLeading: false,
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
                                    url +
                                        "$formatter.toString()}/" +
                                        slug.toString(),
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.black12,
              elevation: 2.0,
              automaticallyImplyLeading: true,
              expandedHeight: 30,
              floating: true,
              snap: false,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.screen_share_outlined,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.forward_rounded,
                  ),
                ),
              ],
            ),
          ];
        },
        body: ListView(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(getGambar + artikelModel.gambar!,
                      fit: BoxFit.cover),
                ),
                Positioned(
                  top: 200.0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    child: Container(
                      color: Color.fromARGB(255, 255, 255, 255),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          Bidi.stripHtmlIfNeeded(artikelModel.judul!),
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  Bidi.stripHtmlIfNeeded(artikelModel.isi!),
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.network(getGambar + artikelModel.gambar1!,
                        fit: BoxFit.cover) ??
                    Container(),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.network(getGambar + artikelModel.gambar2!,
                        fit: BoxFit.cover) ??
                    Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
