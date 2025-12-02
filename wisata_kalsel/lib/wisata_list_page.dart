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
  // --- (ISI DATA WISATA TETAP SAMA, copy sesuai kode kamu) ---
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
