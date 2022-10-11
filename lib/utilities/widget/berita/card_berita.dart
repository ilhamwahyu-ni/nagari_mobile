import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class CardBerita extends StatefulWidget {
  final VoidCallback onTap;
  const CardBerita({
    super.key,
    required this.onTap,
  });

  @override
  State<CardBerita> createState() => _CardBeritaState();
}

class _CardBeritaState extends State<CardBerita> {
  @override
  Widget build(BuildContext context) {
    Future<List?> _loadData() async {
      List berita = [];

      try {
        const apiUrl = 'https://batipuahateh.desa.id/get_berita.php';

        final http.Response response = await http.get(Uri.parse(apiUrl));
        berita = jsonDecode(response.body);
      } catch (e) {
        print(e);
      }
      return berita;
    }

    return FutureBuilder(
      future: _loadData(),
      builder: (context, AsyncSnapshot<List?> snapshot) => snapshot.hasData
          ? ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => Card(
                margin: const EdgeInsets.all(10),
                child: GestureDetector(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                            'https://batipuahateh.desa.id/desa/upload/artikel/kecil_'
                            '${snapshot.data![index]['gambar']}',
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) {
                                return child;
                              } else {
                                return Center(
                                  child: CircularProgressIndicator(
                                    value: loadingProgress.expectedTotalBytes !=
                                            null
                                        ? loadingProgress
                                                .cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes!
                                        : null,
                                  ),
                                );
                              }
                            },
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 1,
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
                                snapshot.data![index]['judul'] ?? 'NA',
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
                                snapshot.data![index]['tgl_upload'] ?? 'NA',
                                style: const TextStyle(color: Colors.black54),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Text('Dilihat : '),
                                  Text(
                                    snapshot.data![index]['hit'] + ' kali' ??
                                        'NA',
                                    style:
                                        const TextStyle(color: Colors.black54),
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
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
