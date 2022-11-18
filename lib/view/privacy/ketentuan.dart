import 'package:flutter/material.dart';

class Ketentuan extends StatelessWidget {
  const Ketentuan({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (_) => const Ketentuan(),
    );
  }

  @override
  Widget build(BuildContext context) {
    const styleJudul = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Syarat Dan Ketentuan'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(9.0),
          child: ListView(
            children: [
              const SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '1 . Pengantar',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Selamat datang di Batipuah Ateh 
    
    Ketentuan Layanan (“Ketentuan”, “Ketentuan Layanan”) ini mengatur penggunaan Anda atas situs web kami yang terletak di batipuahateh.desa.id (bersama-sama atau secara individual “Layanan”) yang dioperasikan oleh Batipuah Ateh .
    
    Kebijakan Privasi kami juga mengatur penggunaan Anda atas Layanan kami dan menjelaskan bagaimana kami mengumpulkan, menjaga, dan mengungkapkan informasi yang dihasilkan dari penggunaan Anda atas halaman web kami.
    
    Perjanjian Anda dengan kami mencakup Ketentuan ini dan Kebijakan Privasi kami (“Perjanjian”). Anda mengakui bahwa Anda telah membaca dan memahami Perjanjian, dan setuju untuk terikat dengannya.
    
    Jika Anda tidak setuju dengan (atau tidak dapat mematuhi) Perjanjian, maka Anda tidak boleh menggunakan Layanan, tetapi beri tahu kami melalui email di wahyuilham20@live.com sehingga kami dapat mencoba mencari solusi. Ketentuan ini berlaku untuk semua pengunjung, pengguna, dan orang lain yang ingin mengakses atau menggunakan Layanan.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '2 . Komunikasi',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Dengan menggunakan Layanan kami, Anda setuju untuk berlangganan buletin, materi pemasaran atau promosi, dan informasi lain yang mungkin kami kirimkan. Namun, Anda dapat memilih untuk tidak menerima salah satu, atau semua, komunikasi ini dari kami dengan mengikuti tautan berhenti berlangganan atau dengan mengirim email ke wahyuilham20@live.com .
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '3 . Isi',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Layanan kami memungkinkan Anda untuk memposting, menautkan, menyimpan, membagikan, dan sebaliknya menyediakan informasi, teks, grafik, video, atau materi tertentu lainnya (“Konten”). Anda bertanggung jawab atas Konten yang Anda posting di atau melalui Layanan, termasuk legalitas, keandalan, dan kelayakannya.
    
    Dengan memposting Konten pada atau melalui Layanan, Anda menyatakan dan menjamin bahwa: (i) Konten adalah milik Anda (Anda memilikinya) dan/atau Anda memiliki hak untuk menggunakannya dan hak untuk memberi kami hak dan lisensi sebagaimana diatur dalam Ketentuan ini , dan (ii) bahwa pengeposan Konten Anda pada atau melalui Layanan tidak melanggar hak privasi, hak publisitas, hak cipta, hak kontrak, atau hak lain apa pun dari orang atau entitas mana pun. Kami berhak untuk menghentikan akun siapa pun yang ditemukan melanggar hak cipta.
    
    Anda mempertahankan setiap dan semua hak Anda atas Konten apa pun yang Anda kirimkan, posting, atau tampilkan pada atau melalui Layanan dan Anda bertanggung jawab untuk melindungi hak-hak tersebut. Kami tidak bertanggung jawab dan tidak bertanggung jawab atas Konten yang Anda atau pos pihak ketiga mana pun di atau melalui Layanan. Namun, dengan memposting Konten menggunakan Layanan, Anda memberi kami hak dan lisensi untuk menggunakan, memodifikasi, melakukan secara publik, menampilkan secara publik, mereproduksi, dan mendistribusikan Konten tersebut di dan melalui Layanan. Anda setuju bahwa lisensi ini mencakup hak bagi kami untuk membuat Konten Anda tersedia bagi pengguna Layanan lain, yang juga dapat menggunakan Konten Anda dengan tunduk pada Ketentuan ini.
    
    Batipuah Ateh berhak tetapi tidak berkewajiban untuk memantau dan mengedit semua Konten yang disediakan oleh pengguna.
    
    Selain itu, Konten yang ditemukan pada atau melalui Layanan ini adalah milik Batipuah Ateh atau digunakan dengan izin. Anda tidak boleh mendistribusikan, memodifikasi, mentransmisikan, menggunakan kembali, mengunduh, memposting ulang, menyalin, atau menggunakan Konten tersebut, baik secara keseluruhan atau sebagian, untuk tujuan komersial atau untuk keuntungan pribadi, tanpa izin tertulis terlebih dahulu dari kami.
    
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '4 . Penggunaan yang Dilarang',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Anda dapat menggunakan Layanan hanya untuk tujuan yang sah dan sesuai dengan Ketentuan. Anda setuju untuk tidak menggunakan Layanan:
    
    0,1. Dengan cara apa pun yang melanggar hukum atau peraturan nasional atau internasional yang berlaku.
    
    0.2. Untuk tujuan mengeksploitasi, merugikan, atau mencoba mengeksploitasi atau merugikan anak di bawah umur dengan cara apa pun dengan mengekspos mereka ke konten yang tidak pantas atau sebaliknya.
    
    0,3. Untuk mengirimkan, atau mendapatkan pengiriman, materi iklan atau promosi apa pun, termasuk "email sampah", "surat berantai", "spam", atau ajakan serupa lainnya.
    
    0,4. Untuk meniru atau mencoba meniru Batipuah Ateh, karyawan Batipuah Ateh, pengguna lain, atau orang atau entitas lain.
    
    0,5. Dengan cara apa pun yang melanggar hak orang lain, atau dengan cara apa pun ilegal, mengancam, curang, atau berbahaya, atau sehubungan dengan tujuan atau aktivitas yang melanggar hukum, ilegal, curang, atau berbahaya.
    
    0.6. Untuk terlibat dalam perilaku lain yang membatasi atau menghambat penggunaan atau kenikmatan Layanan oleh siapa pun, atau yang, sebagaimana ditentukan oleh kami, dapat membahayakan atau menyinggung Batipuah Ateh atau pengguna Layanan atau membuat mereka bertanggung jawab.
    
    Selain itu, Anda setuju untuk tidak:
    
    0,1. Menggunakan Layanan dengan cara apa pun yang dapat menonaktifkan, membebani, merusak, atau mengganggu Layanan atau mengganggu penggunaan Layanan oleh pihak lain, termasuk kemampuan mereka untuk terlibat dalam aktivitas waktu nyata melalui Layanan.
    
    0.2. Menggunakan robot, spider, atau perangkat, proses, atau sarana otomatis lainnya untuk mengakses Layanan untuk tujuan apa pun, termasuk memantau atau menyalin materi apa pun di Layanan.
    
    0,3. Menggunakan proses manual apa pun untuk memantau atau menyalin materi apa pun di Layanan atau untuk tujuan tidak sah lainnya tanpa persetujuan tertulis sebelumnya dari kami.
    
    0,4. Gunakan perangkat, perangkat lunak, atau rutinitas apa pun yang mengganggu kerja Layanan yang semestinya.
    
    0,5. Memperkenalkan virus, kuda trojan, worm, bom logika, atau materi lain yang berbahaya atau berbahaya secara teknologi.
    
    0.6. Mencoba untuk mendapatkan akses tidak sah ke, mengganggu, merusak, atau mengganggu bagian mana pun dari Layanan, server tempat Layanan disimpan, atau server, komputer, atau basis data apa pun yang terhubung ke Layanan.
    
    0.7. Serang Layanan melalui serangan denial-of-service atau serangan denial-of-service terdistribusi.
    
    0,8. Mengambil tindakan apa pun yang dapat merusak atau memalsukan peringkat Batipuah Ateh.
    
    0.9. Jika tidak, cobalah untuk mengganggu kerja Layanan yang tepat.
    
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '5 . Analitik',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Kami dapat menggunakan Penyedia Layanan pihak ketiga untuk memantau dan menganalisis penggunaan Layanan kami.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '6 . Tidak Digunakan Oleh Anak di Bawah Umur',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Layanan dimaksudkan hanya untuk akses dan penggunaan oleh individu yang berusia minimal delapan belas (18) tahun. Dengan mengakses atau menggunakan Layanan, Anda menjamin dan menyatakan bahwa Anda setidaknya berusia delapan belas (18) tahun dan dengan otoritas, hak, dan kapasitas penuh untuk masuk ke dalam perjanjian ini dan mematuhi semua syarat dan ketentuan Ketentuan. Jika Anda belum berusia minimal delapan belas (18) tahun, Anda dilarang untuk mengakses dan menggunakan Layanan.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '7 . Akun',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Saat Anda membuat akun dengan kami, Anda menjamin bahwa Anda berusia di atas 18 tahun, dan bahwa informasi yang Anda berikan kepada kami akurat, lengkap, dan terkini setiap saat. Informasi yang tidak akurat, tidak lengkap, atau usang dapat mengakibatkan penghentian segera akun Anda di Layanan.
    
    Anda bertanggung jawab untuk menjaga kerahasiaan akun dan kata sandi Anda, termasuk namun tidak terbatas pada pembatasan akses ke komputer dan/atau akun Anda. Anda setuju untuk menerima tanggung jawab atas setiap dan semua aktivitas atau tindakan yang terjadi di bawah akun dan/atau kata sandi Anda, baik kata sandi Anda dengan Layanan kami atau layanan pihak ketiga. Anda harus segera memberi tahu kami setelah mengetahui adanya pelanggaran keamanan atau penggunaan akun Anda secara tidak sah.
    
    Anda tidak boleh menggunakan sebagai nama pengguna nama orang atau entitas lain atau yang secara hukum tidak tersedia untuk digunakan, nama atau merek dagang yang tunduk pada hak apa pun dari orang atau entitas lain selain Anda, tanpa otorisasi yang sesuai. Anda tidak boleh menggunakan sebagai nama pengguna nama apa pun yang menyinggung, vulgar, atau cabul.
    
    Kami berhak menolak layanan, menghentikan akun, menghapus atau mengedit konten, atau membatalkan pesanan atas kebijakan kami sendiri.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '9 . Kebijakan Hak Cipta',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Kami menghormati hak kekayaan intelektual orang lain. Merupakan kebijakan kami untuk menanggapi klaim apa pun bahwa Konten yang diposting di Layanan melanggar hak cipta atau hak kekayaan intelektual lainnya ("Pelanggaran") dari orang atau entitas mana pun.
    
    Jika Anda adalah pemilik hak cipta, atau diberi kuasa atas namanya, dan Anda yakin bahwa karya berhak cipta tersebut telah disalin dengan cara yang merupakan pelanggaran hak cipta, silakan ajukan klaim Anda melalui email ke wahyuilham20@live.com , dengan baris subjek: “Pelanggaran Hak Cipta” dan sertakan dalam klaim Anda deskripsi terperinci tentang dugaan Pelanggaran seperti yang dijelaskan di bawah, di bawah “Pemberitahuan DMCA dan Prosedur untuk Klaim Pelanggaran Hak Cipta”
    
    Anda dapat dimintai pertanggungjawaban atas kerugian (termasuk biaya dan ongkos pengacara) atas pernyataan keliru atau klaim itikad buruk atas pelanggaran Konten apa pun yang ditemukan pada dan/atau melalui Layanan pada hak cipta Anda.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '10 . Pemberitahuan DMCA dan Prosedur untuk Klaim Pelanggaran Hak Cipta',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Anda dapat mengirimkan pemberitahuan sesuai dengan Digital Millennium Copyright Act (DMCA) dengan memberikan informasi berikut secara tertulis kepada Agen Hak Cipta kami (lihat 17 USC 512(c)(3) untuk perincian lebih lanjut):
    
    0,1. tanda tangan elektronik atau fisik dari orang yang berwenang untuk bertindak atas nama pemilik kepentingan hak cipta;
    
    0,2. deskripsi karya berhak cipta yang Anda klaim telah dilanggar, termasuk URL (yaitu, alamat halaman web) lokasi tempat karya berhak cipta berada atau salinan karya berhak cipta;
    
    0,3. identifikasi URL atau lokasi spesifik lainnya di Layanan tempat materi yang Anda klaim dilanggar berada;
    
    0,4. alamat, nomor telepon, dan alamat email Anda;
    
    0,5. pernyataan oleh Anda bahwa Anda memiliki keyakinan dengan itikad baik bahwa penggunaan yang disengketakan tidak diizinkan oleh pemilik hak cipta, agennya, atau hukum;
    
    0.6. pernyataan oleh Anda, yang dibuat di bawah sumpah, bahwa informasi di atas dalam pemberitahuan Anda adalah akurat dan bahwa Anda adalah pemilik hak cipta atau berwenang untuk bertindak atas nama pemilik hak cipta.
    
    Anda dapat menghubungi Agen Hak Cipta kami melalui email di wahyuilham20@live.com .
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '10 . Pelaporan Kesalahan dan Umpan Balik',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Anda dapat memberikan kami secara langsung di wahyuilham20@live.comatau melalui situs dan alat pihak ketiga dengan informasi dan umpan balik mengenai kesalahan, saran perbaikan, ide, masalah, keluhan, dan hal-hal lain yang terkait dengan Layanan kami (“Umpan Balik”). Anda mengakui dan menyetujui bahwa: (i) Anda tidak boleh mempertahankan, memperoleh, atau menegaskan hak kekayaan intelektual apa pun atau hak, kepemilikan, atau kepentingan lainnya di atau atas Umpan Balik; (ii) Batipuah Ateh mungkin memiliki gagasan pengembangan yang serupa dengan Umpan Balik; (iii) Umpan balik tidak mengandung informasi rahasia atau informasi hak milik dari Anda atau pihak ketiga mana pun; dan (iv) Batipuah Ateh tidak berkewajiban menjaga kerahasiaan sehubungan dengan Umpan Balik. Jika pengalihan kepemilikan Umpan Balik tidak dimungkinkan karena undang-undang wajib yang berlaku, Anda memberi Batipuah Ateh dan afiliasinya hak eksklusif, dapat dialihkan, tidak dapat dibatalkan, gratis, dapat disublisensikan,
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '11 . Tautan Ke Situs Web Lain',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Layanan kami mungkin berisi tautan ke situs web atau layanan pihak ketiga yang tidak dimiliki atau dikendalikan oleh Batipuah Ateh .
    
    Batipuah Ateh tidak memiliki kendali atas, dan tidak bertanggung jawab atas konten, kebijakan privasi, atau praktik situs web atau layanan pihak ketiga mana pun. Kami tidak menjamin penawaran dari salah satu entitas/individu ini atau situs web mereka.
    
    Misalnya, Ketentuan Penggunaan yang diuraikan telah dibuat menggunakan PolicyMaker.io , aplikasi web gratis untuk menghasilkan dokumen hukum berkualitas tinggi. Generator Syarat dan Ketentuan PolicyMaker adalah alat gratis yang mudah digunakan untuk membuat template Persyaratan Layanan standar yang sangat baik untuk situs web, blog, toko e-niaga, atau aplikasi.
    
    ANDA MENGAKUI DAN MENYETUJUI BAHWA BATIPUAH ATEH TIDAK BERTANGGUNG JAWAB ATAU BERTANGGUNG JAWAB, LANGSUNG ATAU TIDAK LANGSUNG, ATAS KERUSAKAN ATAU KERUGIAN YANG DISEBABKAN ATAU DITUNGGU DISEBABKAN OLEH ATAU SEHUBUNGAN DENGAN PENGGUNAAN ATAU KEANDALAN PADA LAYANAN TERSEBUT, SITUS ATAU LAYANAN PIHAK KETIGA TERSEBUT.
    
    KAMI SANGAT MENYARANKAN ANDA UNTUK MEMBACA SYARAT LAYANAN DAN KEBIJAKAN PRIVASI DARI SITUS WEB ATAU LAYANAN PIHAK KETIGA YANG ANDA KUNJUNGI.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '12 . Penafian Garansi',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    LAYANAN INI DISEDIAKAN OLEH BATIPUAH ATEH DENGAN DASAR “SEBAGAIMANA ADANYA” DAN “SEBAGAIMANA TERSEDIA”. BATIPUAH ATEH TIDAK MEMBUAT PERNYATAAN ATAU JAMINAN APA PUN, TERSURAT MAUPUN TERSIRAT, SEHUBUNGAN DENGAN PENGOPERASIAN LAYANAN MEREKA, ATAU INFORMASI, KONTEN ATAU MATERI YANG TERMASUK DI DALAMNYA. ANDA SECARA TEGAS SETUJU BAHWA PENGGUNAAN LAYANAN INI, KONTENNYA, DAN SETIAP LAYANAN ATAU ITEM YANG DIPEROLEH DARI KAMI ADALAH RISIKO ANDA SENDIRI.
    
    BAIK BATIPUAH ATEH MAUPUN ORANG YANG TERKAIT DENGAN BATIPUAH ATEH TIDAK MEMBERIKAN JAMINAN ATAU PERNYATAAN SEHUBUNGAN DENGAN KELENGKAPAN, KEAMANAN, KEANDALAN, KUALITAS, AKURASI, ATAU KETERSEDIAAN LAYANAN. TANPA MEMBATASI YANG DI ATAS, BAIK BATIPUAH ATEH MAUPUN SIAPAPUN YANG TERKAIT DENGAN BATIPUAH ATEH MENYATAKAN ATAU MENJAMIN BAHWA LAYANAN, KONTENNYA, ATAU LAYANAN ATAU BARANG YANG DIPEROLEH MELALUI LAYANAN AKAN AKURAT, TIDAK DAPAT DIANDALKAN, KESALAHAN BAHWA LAYANAN ATAU SERVER YANG MEMBUATNYA TERSEDIA BEBAS DARI VIRUS ATAU KOMPONEN BERBAHAYA LAINNYA ATAU BAHWA LAYANAN ATAU LAYANAN ATAU BARANG YANG DIPEROLEH MELALUI LAYANAN AKAN MEMENUHI KEBUTUHAN ATAU HARAPAN ANDA.
    
    BATIPUAH ATEH DENGAN INI MENYANGKAL SEMUA JAMINAN APA PUN, BAIK TERSURAT MAUPUN TERSIRAT, HUKUM, ATAU LAINNYA, TERMASUK NAMUN TIDAK TERBATAS PADA JAMINAN KELAYAKAN DIPERDAGANGKAN, NON-PELANGGARAN, DAN KESESUAIAN UNTUK TUJUAN TERTENTU.
    
    HAL TERSEBUT TIDAK MEMPENGARUHI JAMINAN APA PUN YANG TIDAK DAPAT DIKECUALIKAN ATAU DIBATASI BERDASARKAN HUKUM YANG BERLAKU.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '13 . Batasan Tanggung Jawab',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    KECUALI DILARANG OLEH UNDANG-UNDANG, ANDA AKAN MEMBUAT KAMI DAN PEJABAT, DIREKTUR, KARYAWAN, DAN AGEN KAMI TIDAK BERBAHAYA ATAS KERUSAKAN TIDAK LANGSUNG, HUKUMAN, KHUSUS, INSIDENTAL, ATAU KONSEKUENSIAL, NAMUN TIMBULNYA DAN TERMASUK PENGACARA LITIGASI DAN ARBITRASE, ATAU DALAM PERCOBAAN ATAU BANDING, JIKA ADA, APAKAH LITIGASI ATAU ARBITRASE DIBUAT MAUPUN TIDAK), BAIK DALAM TINDAKAN KONTRAK, KELALAIAN, ATAU TINDAKAN MENYEBABKAN LAINNYA, ATAU TIMBUL DARI ATAU SEHUBUNGAN DENGAN INI TANPA PEMBATASAN APAPUN KLAIM ATAS CEDERA PRIBADI ATAU KERUSAKAN PROPERTI, TIMBUL DARI PERJANJIAN INI DAN SETIAP PELANGGARAN OLEH ANDA TERHADAP UNDANG-UNDANG FEDERAL, NEGARA, ATAU LOKAL, ADAT, ATURAN, ATAU PERATURAN, BAHKAN JIKA PERUSAHAAN TELAH DITENTUKAN SEBELUMNYA . KECUALI DILARANG OLEH HUKUM, JIKA TANGGUNG JAWAB YANG DITEMUKAN PADA BAGIAN PERUSAHAAN, ITU AKAN TERBATAS PADA JUMLAH YANG DIBAYARKAN UNTUK PRODUK DAN/ATAU LAYANAN, DAN DALAM KEADAAN APA PUN TIDAK AKAN ADA KERUSAKAN KONSEKUENSIAL ATAU HUKUMAN. BEBERAPA NEGARA TIDAK MENGIZINKAN PENGECUALIAN ATAU PEMBATASAN KERUSAKAN HUKUMAN, INSIDENTAL ATAU KONSEKUENSIAL, SEHINGGA PEMBATASAN ATAU PENGECUALIAN SEBELUMNYA MUNGKIN TIDAK BERLAKU BAGI ANDA.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '14 . Penghentian',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Kami dapat menghentikan atau menangguhkan akun Anda dan memblokir akses ke Layanan segera, tanpa pemberitahuan atau kewajiban sebelumnya, berdasarkan kebijakan kami sendiri, untuk alasan apa pun dan tanpa batasan, termasuk namun tidak terbatas pada pelanggaran Ketentuan.
    
    Jika Anda ingin mengakhiri akun Anda, Anda dapat berhenti menggunakan Layanan.
    
    Semua ketentuan Ketentuan yang menurut sifatnya harus tetap berlaku setelah pengakhiran akan tetap berlaku setelah pengakhiran, termasuk, tanpa batasan, ketentuan kepemilikan, penafian garansi, ganti rugi, dan batasan tanggung jawab.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '15 . Peraturan pemerintah',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Ketentuan ini akan diatur dan ditafsirkan sesuai dengan hukum Tanah Datar-Indonesia , yang mengatur hukum berlaku untuk perjanjian tanpa memperhatikan pertentangan ketentuan hukum.
    
    Kegagalan kami untuk menegakkan hak atau ketetapan apa pun dari Ketentuan ini tidak akan dianggap sebagai pengesampingan hak tersebut. Jika ada ketentuan dari Ketentuan ini yang dianggap tidak sah atau tidak dapat dilaksanakan oleh pengadilan, ketentuan lainnya dari Ketentuan ini akan tetap berlaku. Ketentuan ini merupakan keseluruhan perjanjian antara kami terkait Layanan kami dan menggantikan dan menggantikan perjanjian sebelumnya yang mungkin kami miliki di antara kami terkait Layanan.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '16 . Perubahan Layanan',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Kami berhak untuk menarik atau mengubah Layanan kami, dan layanan atau materi apa pun yang kami sediakan melalui Layanan, atas kebijakan kami sendiri tanpa pemberitahuan. Kami tidak akan bertanggung jawab jika karena alasan apa pun semua atau sebagian Layanan tidak tersedia setiap saat atau untuk periode apa pun. Dari waktu ke waktu, kami dapat membatasi akses ke beberapa bagian Layanan, atau seluruh Layanan, kepada pengguna, termasuk pengguna terdaftar.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '17 . Amandemen Ketentuan',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Kami dapat mengubah Ketentuan kapan saja dengan memposting ketentuan yang diubah di situs ini. Anda bertanggung jawab untuk meninjau Ketentuan ini secara berkala.
    
    Anda terus menggunakan Platform setelah memposting Ketentuan yang direvisi berarti Anda menerima dan menyetujui perubahan tersebut. Anda diharapkan untuk sering memeriksa halaman ini sehingga Anda mengetahui setiap perubahan, karena itu mengikat Anda.
    
    Dengan terus mengakses atau menggunakan Layanan kami setelah revisi berlaku, Anda setuju untuk terikat dengan persyaratan yang direvisi. Jika Anda tidak setuju dengan persyaratan baru, Anda tidak lagi berwenang untuk menggunakan Layanan.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '18 . Pengesampingan dan Keterpisahan',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Tidak ada pengesampingan oleh Perusahaan atas syarat atau ketentuan apa pun yang ditetapkan dalam Ketentuan yang akan dianggap sebagai pengesampingan lebih lanjut atau berkelanjutan dari syarat atau ketentuan tersebut atau pengabaian atas syarat atau ketentuan lainnya, dan setiap kegagalan Perusahaan untuk menegaskan hak atau ketentuan berdasarkan Ketentuan akan bukan merupakan pelepasan hak atau ketentuan tersebut.
    
    Jika ada ketentuan dari Ketentuan yang dianggap tidak sah, ilegal, atau tidak dapat dilaksanakan karena alasan apa pun oleh pengadilan atau tribunal lain dari yurisdiksi yang kompeten, ketentuan tersebut harus dihilangkan atau dibatasi seminimal mungkin sehingga ketentuan lainnya dari Ketentuan akan terus berlaku penuh. dan efek.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '19 . Pengakuan',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    DENGAN MENGGUNAKAN LAYANAN ATAU LAYANAN LAIN YANG DISEDIAKAN OLEH KAMI, ANDA MENGAKUI BAHWA ANDA TELAH MEMBACA KETENTUAN LAYANAN INI DAN SETUJU UNTUK TERIKAT OLEH BATIPUAH ATEH.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '20 . Hubungi kami',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Silakan kirim umpan balik, komentar, permintaan dukungan teknis Anda melalui email: wahyuilham20@live.com .
    
    Ketentuan Layanan ini dibuat untuk batipuahateh.desa.id pada 2022-11-15 .
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
