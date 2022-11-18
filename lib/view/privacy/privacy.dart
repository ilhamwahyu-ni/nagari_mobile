import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (_) => const Privacy(),
    );
  }

  @override
  Widget build(BuildContext context) {
    const styleJudul = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Kebijakan Privasi'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(9),
          child: ListView(
            children: [
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
    Selamat datang di Batipuah Ateh .
    
    Batipuah Ateh mengoperasikan batipuahateh.desa.id (selanjutnya disebut “Layanan” ).
    
    Kebijakan Privasi kami mengatur kunjungan Anda ke batipuahateh.desa.id , dan menjelaskan bagaimana kami mengumpulkan, menjaga dan mengungkapkan informasi yang dihasilkan dari penggunaan Layanan kami oleh Anda.
    
    Kami menggunakan data Anda untuk menyediakan dan meningkatkan Layanan. Dengan menggunakan Layanan, Anda menyetujui pengumpulan dan penggunaan informasi sesuai dengan kebijakan ini. Kecuali ditentukan lain dalam Kebijakan Privasi ini, istilah yang digunakan dalam Kebijakan Privasi ini memiliki arti yang sama seperti dalam Syarat dan Ketentuan kami.
    
    Syarat dan Ketentuan kami ( “Ketentuan” ) mengatur semua penggunaan Layanan kami dan bersama-sama dengan Kebijakan Privasi merupakan persetujuan Anda dengan kami ( “perjanjian” ).
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '2 . Definisi',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''LAYANAN berarti website batipuahateh.desa.id yang dioperasikan oleh Batipuah Ateh .
    
    DATA PRIBADI berarti data tentang individu yang masih hidup yang dapat diidentifikasi dari data tersebut (atau dari data tersebut dan informasi lainnya baik yang kami miliki atau yang kemungkinan akan kami miliki).
    
    DATA PENGGUNAAN adalah data yang dikumpulkan secara otomatis baik yang dihasilkan oleh penggunaan Layanan atau dari infrastruktur Layanan itu sendiri (misalnya, durasi kunjungan halaman).
    
    COOKIES adalah file kecil yang disimpan di perangkat Anda (komputer atau perangkat seluler).
    
    PENGENDALI DATA berarti orang perseorangan atau hukum yang (baik sendiri atau bersama-sama atau bersama dengan orang lain) menentukan tujuan dan cara data pribadi diproses, atau akan diproses. Untuk tujuan Kebijakan Privasi ini, kami adalah Pengontrol Data dari data Anda.
    
    PEMROSES DATA (ATAU PENYEDIA LAYANAN) berarti setiap orang atau badan hukum yang memproses data atas nama Pengontrol Data. Kami dapat menggunakan layanan dari berbagai Penyedia Layanan untuk memproses data Anda secara lebih efektif.
    
    SUBJEK DATA adalah setiap individu hidup yang menjadi subjek Data Pribadi.
    
    PENGGUNA adalah individu yang menggunakan Layanan kami. Pengguna sesuai dengan Subjek Data, yang merupakan subjek Data Pribadi.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '3 . Pengumpulan dan Penggunaan Informasi',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Kami mengumpulkan beberapa jenis informasi untuk berbagai tujuan guna menyediakan dan meningkatkan Layanan kami kepada Anda.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '4 . Jenis Data yang Dikumpulkan',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Data pribadi
    
    Saat menggunakan Layanan kami, kami dapat meminta Anda untuk memberikan kami informasi pengenal pribadi tertentu yang dapat digunakan untuk menghubungi atau mengidentifikasi Anda ( “Data Pribadi” ). Informasi pengenal pribadi dapat mencakup, tetapi tidak terbatas pada:
    
    0.1. Alamat email
    
    0.2. Nama depan dan nama belakang
    
    0,3. Nomor telepon
    
    0,4. Alamat, Negara, Negara Bagian, Provinsi, ZIP/Kode Pos, Kota
    
    0,5. Cookie dan Data Penggunaan
    
    Kami dapat menggunakan Data Pribadi Anda untuk menghubungi Anda dengan buletin, materi pemasaran atau promosi dan informasi lain yang mungkin menarik bagi Anda. Anda dapat memilih untuk tidak menerima salah satu, atau semua, komunikasi ini dari kami dengan mengikuti tautan berhenti berlangganan.
    
    Data Penggunaan
    
    Kami juga dapat mengumpulkan informasi yang dikirimkan browser Anda setiap kali Anda mengunjungi Layanan kami atau saat Anda mengakses Layanan dengan atau melalui perangkat apa pun ( “Data Penggunaan” ).
    
    Data Penggunaan ini dapat mencakup informasi seperti alamat Protokol Internet komputer Anda (misalnya alamat IP), jenis browser, versi browser, halaman Layanan kami yang Anda kunjungi, waktu dan tanggal kunjungan Anda, waktu yang dihabiskan untuk halaman tersebut, unik pengidentifikasi perangkat dan data diagnostik lainnya.
    
    Saat Anda mengakses Layanan dengan perangkat, Data Penggunaan ini dapat mencakup informasi seperti jenis perangkat yang Anda gunakan, ID unik perangkat Anda, alamat IP perangkat Anda, sistem operasi perangkat Anda, jenis browser Internet yang Anda gunakan, perangkat unik pengenal dan data diagnostik lainnya.
    
    Pelacakan Data Cookie
    
    Kami menggunakan cookie dan teknologi pelacakan serupa untuk melacak aktivitas di Layanan kami dan kami menyimpan informasi tertentu.
    
    Cookie adalah file dengan sejumlah kecil data yang mungkin menyertakan pengidentifikasi unik anonim. Cookie dikirim ke browser Anda dari situs web dan disimpan di perangkat Anda. Teknologi pelacakan lainnya juga digunakan seperti suar, tag, dan skrip untuk mengumpulkan dan melacak informasi serta untuk meningkatkan dan menganalisis Layanan kami.
    
    Anda dapat menginstruksikan browser Anda untuk menolak semua cookie atau untuk menunjukkan saat cookie dikirim. Namun, jika Anda tidak menerima cookie, Anda mungkin tidak dapat menggunakan beberapa bagian dari Layanan kami.
    
    Contoh Cookie yang kami gunakan:
    
    0,1. Cookie Sesi: Kami menggunakan Cookie Sesi untuk mengoperasikan Layanan kami.
    
    0.2. Cookie Preferensi: Kami menggunakan Cookie Preferensi untuk mengingat preferensi Anda dan berbagai pengaturan.
    
    0,3. Cookie Keamanan: Kami menggunakan Cookie Keamanan untuk tujuan keamanan.
    
    0,4. Cookie Iklan: Cookie Iklan digunakan untuk melayani Anda dengan iklan yang mungkin relevan dengan Anda dan minat Anda.
    
    Data yang lain
    
    Saat menggunakan Layanan kami, kami juga dapat mengumpulkan informasi berikut: jenis kelamin, usia, tanggal lahir, tempat lahir, detail paspor, kewarganegaraan, pendaftaran di tempat tinggal dan alamat sebenarnya, nomor telepon (kantor, ponsel), detail dokumen tentang pendidikan, kualifikasi, pelatihan profesional, perjanjian kerja, perjanjian NDA , informasi tentang bonus dan kompensasi, informasi tentang status perkawinan, anggota keluarga, nomor jaminan sosial (atau identifikasi wajib pajak lainnya), lokasi kantor dan data lainnya.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '5 . Penggunaan Data',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Batipuah Ateh menggunakan data yang dikumpulkan untuk berbagai tujuan:
    
    0,1. untuk menyediakan dan memelihara Layanan kami;
    
    0.2. untuk memberitahukan Anda tentang perubahan didalam pelayanan kami;
    
    0,3. untuk memungkinkan Anda berpartisipasi dalam fitur interaktif Layanan kami saat Anda memilih untuk melakukannya;
    
    0,4. untuk memberikan dukungan pelanggan;
    
    0,5. untuk mengumpulkan analisis atau informasi berharga agar kami dapat meningkatkan Layanan kami;
    
    0.6. untuk memantau penggunaan Layanan kami;
    
    0.7. untuk mendeteksi, mencegah, dan mengatasi masalah teknis;
    
    0,8. untuk memenuhi tujuan lain yang Anda berikan;
    
    0.9. untuk melaksanakan kewajiban kami dan menegakkan hak kami yang timbul dari kontrak apa pun yang dibuat antara Anda dan kami, termasuk untuk penagihan dan penagihan;
    
    0,10. untuk memberi Anda pemberitahuan tentang akun dan/atau langganan Anda, termasuk pemberitahuan kedaluwarsa dan pembaruan, instruksi email, dll.;
    
    0,11. untuk memberi Anda berita, penawaran khusus, dan informasi umum tentang barang, layanan, dan acara lain yang kami tawarkan yang serupa dengan yang telah Anda beli atau tanyakan kecuali Anda memilih untuk tidak menerima informasi tersebut;
    
    0,12. dengan cara lain apa pun yang mungkin kami jelaskan saat Anda memberikan informasi;
    
    0.13. untuk tujuan lain dengan persetujuan Anda.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '6 . Retensi Data',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Kami akan menyimpan Data Pribadi Anda hanya selama diperlukan untuk tujuan yang ditetapkan dalam Kebijakan Privasi ini. Kami akan menyimpan dan menggunakan Data Pribadi Anda sejauh yang diperlukan untuk mematuhi kewajiban hukum kami (misalnya, jika kami diharuskan menyimpan data Anda untuk mematuhi undang-undang yang berlaku), menyelesaikan perselisihan, dan menegakkan perjanjian dan kebijakan hukum kami.
    
    Kami juga akan menyimpan Data Penggunaan untuk tujuan analisis internal. Data Penggunaan umumnya disimpan untuk jangka waktu yang lebih singkat, kecuali jika data ini digunakan untuk memperkuat keamanan atau untuk meningkatkan fungsionalitas Layanan kami, atau kami diwajibkan secara hukum untuk menyimpan data ini untuk jangka waktu yang lebih lama.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '7 . Transfer Data',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Informasi Anda, termasuk Data Pribadi, dapat ditransfer ke – dan disimpan di – komputer yang terletak di luar negara bagian, provinsi, negara, atau yurisdiksi pemerintah lainnya di mana undang-undang perlindungan data mungkin berbeda dari yurisdiksi Anda.
    
    Jika Anda berada di luar Tanah datar - Indonesia dan memilih untuk memberikan informasi kepada kami, harap diperhatikan bahwa kami mentransfer data, termasuk Data Pribadi, ke Tanah datar - Indonesia dan memprosesnya di sana.
    
    Persetujuan Anda terhadap Kebijakan Privasi ini diikuti dengan penyerahan informasi tersebut merupakan persetujuan Anda untuk transfer tersebut.
    
    Batipuah Ateh akan mengambil semua langkah yang diperlukan secara wajar untuk memastikan bahwa data Anda diperlakukan dengan aman dan sesuai dengan Kebijakan Privasi ini dan tidak ada pengalihan Data Pribadi Anda akan dilakukan ke suatu organisasi atau negara kecuali ada kontrol yang memadai termasuk keamanan data Anda dan informasi pribadi lainnya.
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '8 . Pengungkapan Data',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Kami dapat mengungkapkan informasi pribadi yang kami kumpulkan, atau Anda berikan:
    
    0,1. Transaksi bisnis.
    
    Jika kami atau anak perusahaan kami terlibat dalam merger, akuisisi, atau penjualan aset, Data Pribadi Anda dapat dialihkan.
    
    0.2. kasus lain. Kami juga dapat mengungkapkan informasi Anda:
    
    0.2.1. ke anak perusahaan dan afiliasi kami;
    
    0.2.2. kepada kontraktor, penyedia layanan, dan pihak ketiga lainnya yang kami gunakan untuk mendukung bisnis kami;
    
    0.2.3. untuk memenuhi tujuan yang Anda berikan;
    
    0.2.4. untuk tujuan memasukkan logo perusahaan Anda di situs web kami;
    
    0.2.5. untuk tujuan lain yang diungkapkan oleh kami saat Anda memberikan informasi;
    
    0.2.6. dengan persetujuan Anda dalam kasus lain;
    
    0.2.7. jika kami yakin pengungkapan diperlukan atau sesuai untuk melindungi hak, properti, atau keamanan Perusahaan, pelanggan kami, atau pihak lain.
    
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '9 . Keamanan Data',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Keamanan data Anda penting bagi kami, tetapi ingat bahwa tidak ada metode transmisi melalui Internet atau metode penyimpanan elektronik yang 100% aman. Meskipun kami berusaha untuk menggunakan cara yang dapat diterima secara komersial untuk melindungi Data Pribadi Anda, kami tidak dapat menjamin keamanan mutlaknya.
    
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '10 . Hak Perlindungan Data Anda Berdasarkan Peraturan Perlindungan Data Umum (GDPR)',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    jika Anda penduduk Uni Eropa (UE) dan Wilayah Ekonomi Eropa (EEA), Anda memiliki hak perlindungan data tertentu, yang dicakup oleh GDPR.
    
    Kami bertujuan untuk mengambil langkah-langkah yang wajar untuk memungkinkan Anda mengoreksi, mengubah, menghapus, atau membatasi penggunaan Data Pribadi Anda.
    
    Jika Anda ingin diberi tahu Data Pribadi apa yang kami simpan tentang Anda dan jika Anda ingin menghapusnya dari sistem kami, silakan kirim email kepada kami di wahyuilham20@live.com .
    
    Dalam keadaan tertentu, Anda memiliki hak perlindungan data berikut:
    
    0,1. hak untuk mengakses, memperbarui atau menghapus informasi yang kami miliki tentang Anda;
    
    0.2. hak pembetulan. Anda berhak untuk memperbaiki informasi Anda jika informasi tersebut tidak akurat atau tidak lengkap;
    
    0,3. hak untuk keberatan. Anda memiliki hak untuk menolak pemrosesan Data Pribadi Anda oleh kami;
    
    0,4. hak pembatasan. Anda memiliki hak untuk meminta kami membatasi pemrosesan informasi pribadi Anda;
    
    0,5. hak portabilitas data. Anda berhak untuk diberikan salinan Data Pribadi Anda dalam format yang terstruktur, dapat dibaca mesin, dan umum digunakan;
    
    0.6. hak untuk menarik persetujuan. Anda juga berhak untuk menarik persetujuan Anda kapan saja di mana kami mengandalkan persetujuan Anda untuk memproses informasi pribadi Anda;
    
    Harap dicatat bahwa kami mungkin meminta Anda untuk memverifikasi identitas Anda sebelum menanggapi permintaan tersebut. Harap diperhatikan, kami mungkin tidak dapat menyediakan Layanan tanpa beberapa data yang diperlukan.
    
    Anda berhak untuk mengeluh kepada Otoritas Perlindungan Data tentang pengumpulan dan penggunaan Data Pribadi Anda oleh kami. Untuk informasi selengkapnya, hubungi otoritas perlindungan data lokal Anda di Wilayah Ekonomi Eropa (EEA).
    
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '11 . Hak Perlindungan Data Anda berdasarkan Undang-Undang Perlindungan Privasi California (CalOPPA)',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    CalOPPA adalah undang-undang negara bagian pertama di negara ini yang mewajibkan situs web komersial dan layanan online untuk memposting kebijakan privasi. Jangkauan hukum membentang jauh melampaui California untuk mewajibkan seseorang atau perusahaan di Amerika Serikat (dan mungkin dunia) yang mengoperasikan situs web yang mengumpulkan informasi pengenal pribadi dari konsumen California untuk memposting kebijakan privasi yang mencolok di situs webnya yang menyatakan dengan tepat informasi yang dikumpulkan dan yang individu dengan siapa itu dibagikan, dan untuk mematuhi kebijakan ini.
    
    Menurut CalOPPA kami menyetujui hal-hal berikut:
    
    0.1. pengguna dapat mengunjungi situs kami secara anonim;
    
    0.2. tautan Kebijakan Privasi kami menyertakan kata "Privasi", dan dapat dengan mudah ditemukan di halaman beranda situs web kami;
    
    0,3. pengguna akan diberi tahu tentang perubahan kebijakan privasi di Halaman Kebijakan Privasi kami;
    
    0.4. pengguna dapat mengubah informasi pribadi mereka dengan mengirim email kepada kami di wahyuilham20@live.com .
    
    Kebijakan Kami tentang Sinyal “Jangan Lacak”:
    
    Kami menghormati sinyal Jangan Lacak dan tidak melacak, menanam cookie, atau menggunakan iklan saat mekanisme browser Jangan Lacak ada. Jangan Lacak adalah preferensi yang dapat Anda atur di browser web untuk memberi tahu situs web bahwa Anda tidak ingin dilacak.
    
    Anda dapat mengaktifkan atau menonaktifkan Jangan Lacak dengan mengunjungi halaman Preferensi atau Pengaturan di browser web Anda.
    
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '11 . Hak Perlindungan Data Anda berdasarkan Undang-Undang Perlindungan Privasi California (CalOPPA)',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    CalOPPA adalah undang-undang negara bagian pertama di negara ini yang mewajibkan situs web komersial dan layanan online untuk memposting kebijakan privasi. Jangkauan hukum membentang jauh melampaui California untuk mewajibkan seseorang atau perusahaan di Amerika Serikat (dan mungkin dunia) yang mengoperasikan situs web yang mengumpulkan informasi pengenal pribadi dari konsumen California untuk memposting kebijakan privasi yang mencolok di situs webnya yang menyatakan dengan tepat informasi yang dikumpulkan dan yang individu dengan siapa itu dibagikan, dan untuk mematuhi kebijakan ini.
    
    Menurut CalOPPA kami menyetujui hal-hal berikut:
    
    0.1. pengguna dapat mengunjungi situs kami secara anonim;
    
    0.2. tautan Kebijakan Privasi kami menyertakan kata "Privasi", dan dapat dengan mudah ditemukan di halaman beranda situs web kami;
    
    0,3. pengguna akan diberi tahu tentang perubahan kebijakan privasi di Halaman Kebijakan Privasi kami;
    
    0.4. pengguna dapat mengubah informasi pribadi mereka dengan mengirim email kepada kami di wahyuilham20@live.com .
    
    Kebijakan Kami tentang Sinyal “Jangan Lacak”:
    
    Kami menghormati sinyal Jangan Lacak dan tidak melacak, menanam cookie, atau menggunakan iklan saat mekanisme browser Jangan Lacak ada. Jangan Lacak adalah preferensi yang dapat Anda atur di browser web untuk memberi tahu situs web bahwa Anda tidak ingin dilacak.
    
    Anda dapat mengaktifkan atau menonaktifkan Jangan Lacak dengan mengunjungi halaman Preferensi atau Pengaturan di browser web Anda.
    
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '12 . Hak Perlindungan Data Anda berdasarkan Undang-Undang Privasi Konsumen California (CCPA)',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Jika Anda adalah penduduk California, Anda berhak untuk mengetahui data apa yang kami kumpulkan tentang Anda, meminta untuk menghapus data Anda dan tidak menjual (membagikannya). Untuk menggunakan hak perlindungan data Anda, Anda dapat membuat permintaan tertentu dan bertanya kepada kami:
    
    0.1. Informasi pribadi apa yang kami miliki tentang Anda. Jika Anda membuat permintaan ini, kami akan kembali kepada Anda:
    
    0.0.1. Kategori informasi pribadi yang kami kumpulkan tentang Anda.
    
    0.0.2. Kategori sumber dari mana kami mengumpulkan informasi pribadi Anda.
    
    0.0.3. Tujuan bisnis atau komersial untuk mengumpulkan atau menjual informasi pribadi Anda.
    
    0.0.4. Kategori pihak ketiga dengan siapa kami berbagi informasi pribadi.
    
    0.0.5. Bagian spesifik dari informasi pribadi yang telah kami kumpulkan tentang Anda.
    
    0.0.6. Daftar kategori informasi pribadi yang telah kami jual, bersama dengan kategori perusahaan lain tempat kami menjualnya. Jika kami belum menjual informasi pribadi Anda, kami akan memberi tahu Anda tentang fakta itu.
    
    0.0.7. Daftar kategori informasi pribadi yang telah kami ungkapkan untuk tujuan bisnis, bersama dengan kategori perusahaan lain yang kami bagikan.
    
    Harap diperhatikan, Anda berhak meminta kami untuk memberikan informasi ini kepada Anda hingga dua kali dalam periode dua belas bulan bergulir. Saat Anda mengajukan permintaan ini, informasi yang diberikan mungkin terbatas pada informasi pribadi yang kami kumpulkan tentang Anda dalam 12 bulan sebelumnya.
    
    0.2. Untuk menghapus informasi pribadi Anda. Jika Anda membuat permintaan ini, kami akan menghapus informasi pribadi yang kami miliki tentang Anda pada tanggal permintaan Anda dari catatan kami dan mengarahkan penyedia layanan mana pun untuk melakukan hal yang sama. Dalam beberapa kasus, penghapusan dapat dilakukan melalui de-identifikasi informasi. Jika Anda memilih untuk menghapus informasi pribadi Anda, Anda mungkin tidak dapat menggunakan fungsi tertentu yang memerlukan informasi pribadi Anda untuk beroperasi.
    
    0,3. Untuk berhenti menjual informasi pribadi Anda. Kami tidak menjual atau menyewakan informasi pribadi Anda kepada pihak ketiga mana pun untuk tujuan apa pun. Kami tidak menjual informasi pribadi Anda untuk pertimbangan moneter. Namun, dalam keadaan tertentu, transfer informasi pribadi ke pihak ketiga, atau dalam keluarga perusahaan kami, tanpa pertimbangan uang dapat dianggap sebagai “penjualan” menurut undang-undang California. Anda adalah satu-satunya pemilik Data Pribadi Anda dan dapat meminta pengungkapan atau penghapusan kapan saja.
    
    Jika Anda mengajukan permintaan untuk berhenti menjual informasi pribadi Anda, kami akan berhenti melakukan transfer tersebut.
    
    Harap diperhatikan, jika Anda meminta kami untuk menghapus atau menghentikan penjualan data Anda, hal itu dapat memengaruhi pengalaman Anda bersama kami, dan Anda mungkin tidak dapat berpartisipasi dalam program atau layanan keanggotaan tertentu yang memerlukan penggunaan informasi pribadi Anda untuk berfungsi. Tetapi dalam situasi apa pun, kami tidak akan mendiskriminasi Anda karena menggunakan hak Anda.
    
    Untuk menggunakan hak perlindungan data California yang dijelaskan di atas, kirimkan permintaan Anda melalui email: wahyuilham20@live.com .
    
    Hak perlindungan data Anda, yang dijelaskan di atas, dilindungi oleh CCPA, kependekan dari California Consumer Privacy Act. Untuk mengetahui lebih lanjut, kunjungi situs web Informasi Legislatif California resmi. CCPA mulai berlaku pada 01/01/2020.
    
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '13 . Penyedia jasa',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Kami dapat mempekerjakan perusahaan dan individu pihak ketiga untuk memfasilitasi Layanan kami ( “Penyedia Layanan” ), menyediakan Layanan atas nama kami, melakukan layanan terkait Layanan atau membantu kami dalam menganalisis bagaimana Layanan kami digunakan.
    
    Pihak ketiga ini memiliki akses ke Data Pribadi Anda hanya untuk melakukan tugas ini atas nama kami dan berkewajiban untuk tidak mengungkapkan atau menggunakannya untuk tujuan lain apa pun.
    
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '14 . Analitik',
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
                    '15 . alat CI/CD',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Kami dapat menggunakan Penyedia Layanan pihak ketiga untuk mengotomatisasi proses pengembangan Layanan kami.
    
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '16 . Pemasaran Ulang Perilaku',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Kami dapat menggunakan layanan pemasaran ulang untuk beriklan di situs web pihak ketiga kepada Anda setelah Anda mengunjungi Layanan kami. Kami dan vendor pihak ketiga kami menggunakan cookie untuk menginformasikan, mengoptimalkan, dan menayangkan iklan berdasarkan kunjungan Anda sebelumnya ke Layanan kami.
    
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '17 . Tautan ke Situs Lain',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Layanan kami mungkin berisi tautan ke situs lain yang tidak dioperasikan oleh kami. Jika Anda mengklik tautan pihak ketiga, Anda akan diarahkan ke situs pihak ketiga tersebut. Kami sangat menyarankan Anda untuk meninjau Kebijakan Privasi dari setiap situs yang Anda kunjungi.
    
    Kami tidak memiliki kendali atas dan tidak bertanggung jawab atas konten, kebijakan privasi, atau praktik dari situs atau layanan pihak ketiga mana pun.
    
    Misalnya, kebijakan privasi yang diuraikan telah dibuat menggunakan PolicyMaker.io , alat gratis yang membantu membuat dokumen hukum berkualitas tinggi. Generator kebijakan privasi PolicyMaker adalah alat yang mudah digunakan untuk membuat kebijakan privasi untuk blog , situs web, toko e-niaga, atau aplikasi seluler.
    
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '18 . Privasi Anak',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Layanan kami tidak dimaksudkan untuk digunakan oleh anak-anak di bawah usia 18 tahun ( "Anak" atau "Anak-anak" ).
    
    Kami tidak secara sadar mengumpulkan informasi pengenal pribadi dari Anak-anak di bawah 18 tahun. Jika Anda mengetahui bahwa seorang Anak telah memberi kami Data Pribadi, silakan hubungi kami. Jika kami mengetahui bahwa kami telah mengumpulkan Data Pribadi dari Anak-anak tanpa verifikasi persetujuan orang tua, kami mengambil langkah-langkah untuk menghapus informasi tersebut dari server kami.
    
    ''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '19 . Perubahan pada Kebijakan Privasi Ini',
                    style: styleJudul,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''
    Kami dapat memperbarui Kebijakan Privasi kami dari waktu ke waktu. Kami akan memberi tahu Anda tentang perubahan apa pun dengan memposting Kebijakan Privasi baru di halaman ini.
    
    Kami akan memberi tahu Anda melalui email dan/atau pemberitahuan penting di Layanan kami, sebelum perubahan menjadi efektif dan memperbarui “tanggal efektif” di bagian atas Kebijakan Privasi ini.
    
    Anda disarankan untuk meninjau Kebijakan Privasi ini secara berkala untuk setiap perubahan. Perubahan pada Kebijakan Privasi ini berlaku efektif ketika diposting di halaman ini.
    
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
    Jika Anda memiliki pertanyaan tentang Kebijakan Privasi ini, silakan hubungi kami melalui email: wahyuilham20@live.com .
    
    Kebijakan Privasi ini dibuat untuk batipuahateh.desa.id oleh PolicyMaker.io pada 15-11-2022 .
    
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
