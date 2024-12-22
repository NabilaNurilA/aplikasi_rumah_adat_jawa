import 'package:flutter/material.dart';
import 'detail_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, String>> houses = const [
    {
      'name': 'Joglo',
      'description': 'Rumah adat khas Jawa Tengah yang memiliki bentuk atap unik menyerupai gunung.',
      'details': 'Rumah Joglo memiliki filosofi mendalam yang mencerminkan keharmonisan hidup dan penghormatan kepada leluhur. Biasanya digunakan oleh kalangan bangsawan.',
      'image': 'joglo.webp'
    },
    {
      'name': 'Limasan',
      'description': 'Rumah tradisional dari Jawa dengan atap berbentuk limas.',
      'details': 'Rumah Limasan dirancang agar tahan terhadap cuaca tropis dan sering digunakan untuk acara adat seperti pernikahan atau upacara keagamaan.',
      'image': 'limasan.webp'
    },
    {
      'name': 'Panggang Pe',
      'description': 'Rumah adat sederhana yang biasanya digunakan untuk tempat tinggal masyarakat pedesaan.',
      'details': 'Rumah Panggang Pe biasanya dibangun dengan bahan alami seperti kayu dan bambu, mencerminkan kesederhanaan hidup masyarakat desa.',
      'image': 'panggang_pe.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rumah Adat Pulau Jawa'),
        centerTitle: true, // Memusatkan teks di AppBar
      ),
      backgroundColor: const Color(0xFFFFE4C4), // Warna cokelat muda
      body: ListView.builder(
        itemCount: houses.length,
        itemBuilder: (context, index) {
          final house = houses[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(
                house['name']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(house['description']!),
              leading: Image.asset(
                house['image']!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(house: house),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
