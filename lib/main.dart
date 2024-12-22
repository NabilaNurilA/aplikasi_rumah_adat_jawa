import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import file HomePage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rumah Adat Pulau Jawa',
      theme: ThemeData(primarySwatch: Colors.brown),
      home: const HomePage(), // Memanggil HomePage sebagai layar utama
    );
  }
}
