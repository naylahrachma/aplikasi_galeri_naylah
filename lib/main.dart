import 'package:flutter/material.dart';

void main() {
  runApp(const PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {
  const PhotoGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Galeri Foto"),
        ),
        body: const PhotoGallery(),
      ),
    );
  }
}

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
            'https://picsum.photos/id/88/300/200',
            width: 300,
            height: 200,
          ),
          const SizedBox(height: 16),
          const Text(
            "Jalan di Barcelona",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.place,
                color: Colors.red,
              ),
              Text("Lokasi: Barcelona, Spanyol"),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.calendar_month,
                color: Colors.blue,
              ),
              Text("Publikasi: 13 Agustus 2013"),
            ],
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Deskripsi",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20, // Set the desired font size
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Sebuah persimpangan jalan di Barcelona, Spayol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik.",
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}