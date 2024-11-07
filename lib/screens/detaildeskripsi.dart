import 'dart:io';

import 'package:flutter/material.dart';
class DiseaseDetailPage extends StatelessWidget {
  final String label;
  final File? image;

  const DiseaseDetailPage({Key? key, required this.label, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(label),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Colors.green[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[800],
                ),
              ),
              SizedBox(height: 16),
              image != null
                  ? Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.file(
                    image!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 250,
                  ),
                ),
              )
                  : SizedBox(),
              SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: [
                    Card(
                      elevation: 4.0,
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Deskripsi Penyakit',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green[800],
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              getDiseaseDescription(label),
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.green[800],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 4.0,
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cara Pencegahan',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green[800],
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              getDiseasePrevention(label),
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.green[800],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 4.0,
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cara Perawatan',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green[800],
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              getDiseaseTreatment(label),
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.green[800],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String getDiseaseDescription(String label) {
    switch (label) {
      case 'BercakHitam (Black Root)':
        return 'Bercak Hitam adalah penyakit tanaman yang disebabkan oleh jamur. Penyakit ini menyebabkan daun menjadi hitam dan akhirnya mati.';
      case 'BukanDaunAnggur':
        return 'Ini bukan daun anggur, Deskripsi penyakit tidak ditemukan.';
      case 'HawarDaun (Downy Mildew)':
        return 'Hawar Daun adalah penyakit yang disebabkan oleh jamur dan menyebabkan bercak kuning pada daun.';
      case 'DaunSehat':
        return 'Daun ini sehat dan tidak menunjukkan tanda-tanda penyakit.';
      case 'KaratDaun (Leaf Rust)':
        return 'Karat Daun adalah penyakit yang disebabkan oleh jamur yang menyebabkan bercak berwarna karat pada daun.';
      default:
        return 'Deskripsi penyakit tidak ditemukan.';
    }
  }

  String getDiseasePrevention(String label) {
    switch (label) {
      case 'BercakHitam (Black Root)':
        return '1. Jaga kebersihan lingkungan sekitar tanaman.\n2. Pastikan tanaman mendapatkan sinar matahari yang cukup.\n3. Hindari kelembapan yang berlebihan.';
      case 'HawarDaun (Downy Mildew)':
        return '1. Gunakan fungisida secara rutin.\n2. Jaga jarak antar tanaman untuk sirkulasi udara yang baik.\n3. Hindari penyiraman yang berlebihan.';
      case 'DaunSehat':
        return '1. Lanjutkan perawatan tanaman dengan baik.\n2. Pastikan tanaman mendapatkan nutrisi yang cukup.';
      case 'KaratDaun (Leaf Rust)':
        return '1. Jaga kebersihan lingkungan sekitar tanaman.\n2. Gunakan fungisida yang sesuai.\n3. Pangkas daun yang terinfeksi.';
      default:
        return 'Cara pencegahan tidak ditemukan.';
    }
  }

  String getDiseaseTreatment(String label) {
    switch (label) {
      case 'BercakHitam (Black Root)':
        return '1. Pangkas daun yang terinfeksi.\n2. Gunakan fungisida untuk mengendalikan penyebaran jamur.\n3. Pastikan sirkulasi udara yang baik di sekitar tanaman.';
      case 'HawarDaun (Downy Mildew)':
        return '1. Gunakan fungisida secara rutin.\n2. Pangkas dan buang bagian tanaman yang terinfeksi.\n3. Jaga kelembapan di sekitar tanaman.';
      case 'DaunSehat':
        return '1. Lanjutkan perawatan rutin.\n2. Pastikan tanaman mendapatkan nutrisi yang cukup.';
      case 'KaratDaun (Leaf Rust)':
        return '1. Pangkas daun yang terinfeksi.\n2. Gunakan fungisida untuk mengendalikan penyebaran jamur.\n3. Pastikan tanaman mendapatkan sirkulasi udara yang baik.';
      default:
        return 'Cara perawatan tidak ditemukan.';
    }
  }
}