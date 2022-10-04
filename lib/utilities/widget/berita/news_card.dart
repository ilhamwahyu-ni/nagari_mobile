import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsCard extends StatelessWidget {
  final String imgUrl, judul, tgl, hit, isi;
  final void Function() share;

  const NewsCard({
    super.key,
    required this.imgUrl,
    required this.judul,
    required this.tgl,
    required this.hit,
    required this.isi,
    required this.share,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shadowColor: Colors.black,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: const EdgeInsets.fromLTRB(16, 2, 16, 16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image.network(
              imgUrl,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                }
              },
              height: 150,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              cacheWidth: 1000,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              judul,
              softWrap: true,
              overflow: TextOverflow.clip,
              maxLines: 3,
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(6, 0, 6, 10),
            child: Text(
              isi,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: GoogleFonts.poppins(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 4, 6, 12),
            child: SizedBox(
              height: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    tgl,
                    style: const TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text('Dilihat : '),
                  Text(
                    '$hit kali',
                    style: const TextStyle(color: Colors.black54),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: share,
                    icon: const Icon(
                      Icons.share_sharp,
                    ),
                    iconSize: 20,
                    splashRadius: 15,
                    // alignment: Alignment.topRight,
                    padding: EdgeInsets.zero,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
