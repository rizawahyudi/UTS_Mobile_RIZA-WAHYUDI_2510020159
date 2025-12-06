import 'package:flutter/material.dart';
import 'login_page.dart';
import 'wisata_detail_page.dart';

// MODEL WISATA
class Wisata {
  final String nama;
  final String lokasi;
  final String deskripsiPendek;
  final String deskripsiLengkap;
  final String imageUrl;
  final List<String> label;

  Wisata({
    required this.nama,
    required this.lokasi,
    required this.deskripsiPendek,
    required this.deskripsiLengkap,
    required this.imageUrl,
    required this.label,
  });
}

// DATA LIST WISATA
final List<Wisata> daftarWisata = [
  Wisata(
    nama: 'Bukit Rimpi Pelaihari',
    lokasi: 'Tanah Laut, Kalimantan Selatan',
    deskripsiPendek:
        'Bukit savana hijau dengan pemandangan sunrise yang indah.',
    deskripsiLengkap:
        'Bukit Rimpi atau yang sering disebut Bukit Teletubbies berada di Kabupaten Tanah Laut, '
        'sekitar 2–3 jam perjalanan dari Kota Banjarmasin. Area bukit didominasi hamparan savana hijau '
        'dengan kontur perbukitan yang lembut sehingga pengunjung dapat berjalan santai di sepanjang jalur. '
        'Waktu terbaik untuk berkunjung adalah pagi hari menjelang matahari terbit, karena pengunjung dapat '
        'menyaksikan sunrise yang perlahan muncul di balik perbukitan dengan kabut tipis yang menyelimuti lembah. '
        'Udaranya sejuk, suasana relatif tenang, dan sangat cocok untuk hunting foto, piknik kecil, maupun wisata keluarga. '
        '\n\nAkses menuju Bukit Rimpi dapat dijangkau dengan kendaraan roda dua maupun roda empat, lalu dilanjutkan dengan '
        'sedikit trekking menuju puncak bukit. Di beberapa titik tersedia area parkir dan warung kecil milik warga. '
        'Lokasi Bukit Rimpi di Google Maps dapat diakses melalui tautan berikut:\n'
        'https://maps.app.goo.gl/yZ3X2o9qfLr3p1uD7',
    imageUrl:
        'https://indonesiakaya.com/wp-content/uploads/2020/10/bukit_rimpi_1290.jpg',
    label: ['Bukit', 'Sunrise', 'Savana'],
  ),
  Wisata(
    nama: 'Pantai Takisung',
    lokasi: 'Tanah Laut, Kalimantan Selatan',
    deskripsiPendek:
        'Pantai populer dengan ombak tenang dan jajanan pinggir pantai.',
    deskripsiLengkap:
        'Pantai Takisung merupakan salah satu destinasi wisata pantai yang paling dikenal di Kalimantan Selatan. '
        'Pantai ini memiliki garis pantai yang cukup panjang dengan pasir kecokelatan dan ombak yang relatif tenang, '
        'sehingga aman untuk bermain di tepi pantai. Di sepanjang kawasan pantai banyak terdapat warung dan pedagang '
        'yang menjajakan makanan khas pesisir, seperti ikan bakar, jagung bakar, dan aneka minuman segar. '
        'Suasana pada akhir pekan biasanya cukup ramai karena menjadi tujuan utama rekreasi keluarga, sekolah, maupun rombongan wisata. '
        '\n\nFasilitas di Pantai Takisung antara lain area parkir, musala, toilet umum, serta beberapa gazebo sederhana untuk beristirahat. '
        'Pengunjung juga dapat menikmati pemandangan matahari terbit maupun terbenam tergantung cuaca. '
        'Lokasi Pantai Takisung di Google Maps dapat diakses melalui tautan berikut:\n'
        'https://maps.app.goo.gl/Y8uC6sW6mJg5v2qF9',
    imageUrl:
        'https://dutatv.com/wp-content/uploads/2025/04/IMG_20250424_081016-390x220.jpg',
    label: ['Pantai', 'Keluarga'],
  ),
  Wisata(
    nama: 'Pasar Terapung Lok Baintan',
    lokasi: 'Kabupaten Banjar, Kalimantan Selatan',
    deskripsiPendek:
        'Pasar tradisional di atas sungai dengan perahu jukung khas Banjar.',
    deskripsiLengkap:
        'Pasar Terapung Lok Baintan adalah salah satu ikon wisata budaya Kalimantan Selatan yang sangat terkenal. '
        'Keunikan pasar ini terletak pada aktivitas jual beli yang dilakukan di atas perahu kayu tradisional, '
        'yang disebut jukung, di sepanjang aliran Sungai Martapura. Para pedagang, yang sebagian besar adalah ibu-ibu, '
        'menjajakan hasil bumi seperti sayuran, buah-buahan, kue tradisional, hingga kebutuhan sehari-hari '
        'langsung dari atas perahu mereka. '
        '\n\nAktivitas pasar biasanya dimulai sejak pagi buta hingga sekitar pukul 08.00–09.00 WITA, sehingga waktu terbaik '
        'untuk berkunjung adalah pagi hari. Wisatawan dapat menyewa perahu dari dermaga setempat untuk menyusuri sungai '
        'dan melihat lebih dekat aktivitas jual beli di atas air. Selain menjadi tujuan wisata, Lok Baintan juga menjadi '
        'bukti hidupnya tradisi perdagangan sungai masyarakat Banjar. '
        'Lokasi Pasar Terapung Lok Baintan di Google Maps dapat diakses melalui tautan berikut:\n'
        'https://maps.app.goo.gl/yCmfAYJmz2rVqfGk8',
    imageUrl:
        'https://www.gotravelaindonesia.com/wp-content/uploads/Pasar-Terapung-Lok-Baintan.jpg',
    label: ['Budaya', 'Pasar Terapung'],
  ),
  Wisata(
    nama: 'Menara Pandang Banjarmasin',
    lokasi: 'Banjarmasin, Kalimantan Selatan',
    deskripsiPendek:
        'Menara di tepi Sungai Martapura untuk melihat pemandangan kota.',
    deskripsiLengkap:
        'Menara Pandang Banjarmasin terletak di kawasan Siring Tendean, tepat di tepi Sungai Martapura. '
        'Bangunan menara ini memiliki beberapa lantai yang dapat diakses pengunjung untuk menikmati panorama Kota Banjarmasin '
        'dari ketinggian. Dari puncak menara, pengunjung dapat melihat aliran Sungai Martapura, '
        'lalu lintas perahu, jembatan, kawasan kota, serta aktivitas warga di sepanjang tepian sungai. '
        'Pada malam hari, area sekitar menara biasanya dihiasi lampu-lampu sehingga suasana terasa lebih semarak. '
        '\n\nDi sekitar Menara Pandang terdapat area taman kota, jalur pedestrian, serta deretan pedagang kaki lima yang '
        'menjual makanan dan minuman ringan. Kawasan ini juga sering menjadi tempat pelaksanaan berbagai acara hiburan dan festival. '
        'Menara Pandang dapat dijangkau dengan mudah karena berada di pusat kota Banjarmasin, dekat dengan fasilitas umum dan '
        'penginapan. Lokasi Menara Pandang Banjarmasin di Google Maps dapat diakses melalui tautan berikut:\n'
        'https://maps.app.goo.gl/CiF4M1wK3GJgV4sC6',
    imageUrl:
        'https://indonesiakaya.com/wp-content/uploads/2023/05/Menara-Pandang-Banjarmasin-2.jpeg',
    label: ['Kota', 'Sungai', 'Ikon'],
  ),
];

class WisataListPage extends StatefulWidget {
  final String username;
  const WisataListPage({super.key, required this.username});

  @override
  State<WisataListPage> createState() => _WisataListPageState();
}

class _WisataListPageState extends State<WisataListPage> {
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final List<Wisata> filteredWisata = daftarWisata.where((w) {
      return w.nama.toLowerCase().contains(_searchQuery.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          },
        ),
        title: const Text('Explore Wisata'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.green.shade50,
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hai, ${widget.username}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'Cari nama wisata...',
                    prefixIcon: Icon(Icons.search),
                  ),
                  onChanged: (value) {
                    setState(() => _searchQuery = value);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: filteredWisata.length,
              separatorBuilder: (context, index) => const Divider(height: 1),
              itemBuilder: (context, index) {
                final wisata = filteredWisata[index];
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      wisata.imageUrl,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    wisata.nama,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    wisata.deskripsiPendek,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WisataDetailPage(wisata: wisata),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
