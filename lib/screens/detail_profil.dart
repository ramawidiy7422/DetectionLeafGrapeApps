// mcqs_screen.dart
import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Petunjuk Penggunaan",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.green, // Warna hijau lebih lembut
        automaticallyImplyLeading: true, // Mengaktifkan tombol kembali otomatis
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Aksi kembali ke layar sebelumnya
          },
        ),
        elevation: 0.0,
      ),
      backgroundColor: Colors.green[50],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Berikut adalah petunjuk Penggunaan Vitasscan.',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const Text(
                '\nBerikut cara menggunakan fitur-fitur tersebut :',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                '1.   Pilih Menu Deteksi Penyakit pada menu Dashboard.',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: const AssetImage('assets/images/awal1.png'),
                    width: mediaQueryWidth * 0.3,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                '2.   Kemudian pilih cara pengambilan gambar (Kamera/Galeri).',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: const AssetImage('assets/images/awal2.jpeg'),
                    width: mediaQueryWidth * 0.3,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                '3.   Ketika gambar sudah di ambil atau di pilih, maka gambar akan dipindai oleh sistem dan kita bisa melihat penyakit apa pada daun tersebut.',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: const AssetImage('assets/images/awal3.jpeg'),
                    width: mediaQueryWidth * 0.3,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                '4.   Dan kita juga bisa melihat lebih detail .',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: const AssetImage('assets/images/awal4.jpeg'),
                    width: mediaQueryWidth * 0.3,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                '5. pilih menu penyakit anggur untuk melihat penyakit apa saja yang ada pada daun anggur .',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: const AssetImage('assets/images/awal5.png'),
                    width: mediaQueryWidth * 0.3,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                '6. Maka akan tampil penyakit dan untuk membaca lebih lengkapnya pilih baca selengkapnya .',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: const AssetImage('assets/images/awal6.jpeg'),
                    width: mediaQueryWidth * 0.3,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                '7. Maka akan tampil lebih detail mengenai deskripsi dan cara pencegahan.',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: const AssetImage('assets/images/awal7.jpeg'),
                    width: mediaQueryWidth * 0.3,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                '8. Pilih menu History unuk menampilkan history yang sudah di deteksi pada daun anggur tadi.',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: const AssetImage('assets/images/awal8.png'),
                    width: mediaQueryWidth * 0.3,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                '9. Menu history akan tampil dan anda bisa menghapus history atau riwayat deteksi yang anda inginkan.',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: const AssetImage('assets/images/awal9.jpeg'),
                    width: mediaQueryWidth * 0.3,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                '10. Pilih menu Artikel untuk menampilkan Tentang artikel tentang penyaki anggur.',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: const AssetImage('assets/images/awal10.png'),
                    width: mediaQueryWidth * 0.3,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                '11. Pilih artikel penyakit dan baca selengkapnya untuk lebih detail mengenai artikel penyakit anggur',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: const AssetImage('assets/images/awal11.jpeg'),
                    width: mediaQueryWidth * 0.3,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                '12. Pilih About untuk melihat tentang aplikasi',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: const AssetImage('assets/images/awal12.png'),
                    width: mediaQueryWidth * 0.3,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                '13. Maka tampilan tentang aplikasi menampilkan tentang aplikasi deskripsi',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: const AssetImage('assets/images/awal13.jpeg'),
                    width: mediaQueryWidth * 0.3,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}