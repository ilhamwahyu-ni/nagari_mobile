import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:nagarismart/utilities/widget/api_service.dart';
import 'package:nagarismart/utilities/widget/artikelModel.dart';
import 'berita/get_berita.dart';

class Search extends SearchDelegate {
  Search() : super(searchFieldLabel: 'Cari Berita');
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.search),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back_ios),
    );
  }

  final FetcArtikel _artikelList = FetcArtikel();
  @override
  Widget buildResults(BuildContext context) {
    String getGambar =
        'https://batipuahateh.desa.id/desa/upload/artikel/kecil_';
    return Container(
      child: FutureBuilder<List<ArtikelModel>>(
        future: _artikelList.getArtikel(query: query),
        builder: (context, AsyncSnapshot<List?> snapshot) => snapshot.hasData
            ? ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var data = snapshot.data;
                  var date = DateTime.tryParse(data![index].tglUpload);
                  String formatter = DateFormat('yyyy/MM/dd').format(date!);

                  String isi = Bidi.stripHtmlIfNeeded(data[index].isi);

                  return GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailBerita(
                                  artikelModel: data[index],
                                ))),
                    child: Hero(
                      tag: data[index].id,
                      child: Card(
                        margin: const EdgeInsets.all(10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              width: 150,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
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
                                  fit: BoxFit.cover,
                                  cacheWidth: 1000,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      snapshot.data![index].judul,
                                      softWrap: true,
                                      overflow: TextOverflow.clip,
                                      maxLines: 3,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      formatter,
                                      style: const TextStyle(
                                          color: Colors.black54),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        const Text('Dilihat : '),
                                        Text(
                                          data[index].hit + ' kali' ?? 'NA',
                                          style: const TextStyle(
                                              color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
        child: Text(
      'Berita',
      style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(fontWeight: FontWeight.w600),
    ));
  }
}
