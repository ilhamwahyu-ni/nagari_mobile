import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Jorong extends StatefulWidget {
  const Jorong({super.key});

  @override
  State<Jorong> createState() => _JorongState();
}

List<KepalaJorong> dataKepalaJorong = [
  KepalaJorong(
    nama: 'Syafril J',
    jorong: 'Jorong Balai mato Aie',
    wa: '082288030389',
    image: 'assets/jorong/1.jpeg',
  ),
  KepalaJorong(
    nama: 'Mardetillah',
    jorong: 'Jorong Balai Sabuah',
    wa: '082284638400',
    image: 'assets/jorong/2.jpeg',
  ),
  KepalaJorong(
    nama: 'Jufri Efendi',
    jorong: 'Jorong Jambu',
    wa: '081363291020',
    image: 'assets/jorong/3.jpeg',
  ),
  KepalaJorong(
    nama: 'Evendri Nurdin',
    jorong: 'Jorong Subarang',
    wa: '085215008744',
    image: 'assets/jorong/4.jpeg',
  ),
  KepalaJorong(
    nama: 'Indra Satria',
    jorong: 'Jorong Sawah Diujuang',
    wa: '082225655689',
    image: 'assets/jorong/5.jpeg',
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
              title: Text(
                "Hubungi Kepala Jorong",
                style: TextStyle(color: Colors.black),
              ),
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
        body: ListView.builder(
          itemCount: dataKepalaJorong.length,
          itemBuilder: (context, index) {
            final jorong = dataKepalaJorong[index];
            return Card(
                elevation: 3,
                margin: const EdgeInsets.all(8),
                child: Expanded(
                  flex: 1,
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
                                  fit: BoxFit.fill),
                            ),

                            // child: Image(
                            //   image: AssetImage(jorong.image),
                            //   width: 100,
                            //   height: 100,
                            // ),
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
                            Text(
                              'Kepala ${jorong.jorong}',
                              style: GoogleFonts.poppins(fontSize: 15),
                            ),
                            Row(
                              children: [
                                const Text('Hubungi : '),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.whatsapp),
                                  splashRadius: 2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ));
          },
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
