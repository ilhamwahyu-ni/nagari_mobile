import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Jorong extends StatefulWidget {
  const Jorong({super.key});

  @override
  State<Jorong> createState() => _JorongState();
}

List<KepalaJorong> dataKepalaJorong = [
  KepalaJorong(
    nama: 'Syafril J',
    jorong: 'Jorong Balai mato Aie',
    wa: '+6282288030389',
    image: 'assets/jorong/1.png',
  ),
  KepalaJorong(
    nama: 'Mardetillah',
    jorong: 'Jorong Balai Sabuah',
    wa: '+6282284638400',
    image: 'assets/jorong/2.png',
  ),
  KepalaJorong(
    nama: 'Jufri Efendi',
    jorong: 'Jorong Jambu',
    wa: '+6281363291020',
    image: 'assets/jorong/3.png',
  ),
  KepalaJorong(
    nama: 'Evendri Nurdin',
    jorong: 'Jorong Subarang',
    wa: '+6285215008744',
    image: 'assets/jorong/4.png',
  ),
  KepalaJorong(
    nama: 'Indra Satria',
    jorong: 'Jorong Sawah Diujuang',
    wa: '+6282225655689',
    image: 'assets/jorong/5.png',
  ),
];

class _JorongState extends State<Jorong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 240, 235, 235).withOpacity(0.95),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            const SliverAppBar(
              title: Text('Telepon/Wa'),
              backgroundColor: Colors.white,
              foregroundColor: Colors.red,
              elevation: 3.0,
              automaticallyImplyLeading: true,
              expandedHeight: 50,
              floating: true,
              snap: true,
              centerTitle: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            )
          ];
        },
        body: SizedBox(
          child: ListView.builder(
            // physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: dataKepalaJorong.length,
            itemBuilder: (context, index) {
              var jorong = dataKepalaJorong[index];
              var whatsappURl =
                  "whatsapp://send?phone=${jorong.wa}&text=Assalamualaikum Pak Jorong";
              return Card(
                elevation: 3,
                margin: const EdgeInsets.fromLTRB(8, 4, 8, 8),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 4, 8, 8),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.red,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                  jorong.image,
                                ),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            jorong.nama,
                            style: GoogleFonts.poppins(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                            child: Text(
                              'Kepala ${jorong.jorong}',
                              style: GoogleFonts.poppins(fontSize: 15),
                            ),
                          ),
                          Row(
                            children: [
                              const Text('Hubungi : '),
                              ElevatedButton(
                                onPressed: () async {
                                  final Uri wa = Uri.parse(whatsappURl);
                                  await launchUrl(wa);
                                },
                                child: const Icon(
                                  Icons.whatsapp,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class KepalaJorong {
  final String nama, jorong, wa, image;

  KepalaJorong({
    required this.nama,
    required this.jorong,
    required this.wa,
    required this.image,
  });
}
