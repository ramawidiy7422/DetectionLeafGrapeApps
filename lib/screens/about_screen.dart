import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tentang Aplikasi",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
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
              const SizedBox(height: 5.0),
              const Text(
                'Selamat datang di Aplikasi ViticScan APP Deteksi Penyakit Daun Anggur!',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                '\nApa yang kami tawarkan:',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 4.0),
              const Text(
                'Aplikasi Deteksi Penyakit Anggur adalah solusi inovatif yang dirancang khusus untuk membantu petani dan pengguna lainnya dalam mengelola tanaman Anggur dengan lebih efektif. Aplikasi ini menggunakan teknologi terkini yaitu Convolutional Neural Network (CNN) ResNet, bagian dari algoritma Deep Learning, untuk memberikan analisis akurat dan cepat tentang tingkat penyakit pada daun anggur yang mungkin menyerang tanaman Anda.\n',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                'Fitur Utama:',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 4.0),
              const Text(
                '1. Deteksi Penyakit Anggur: Aplikasi ini dilengkapi dengan kemampuan untuk mendeteksi penyakit anggur dengan menggunakan kamera ponsel Anda. Cukup ambil gambar daun anggur dan aplikasi akan memberikan informasi detail tentang penyakit yang menyerang tanaman Anda.',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 4.0),
              const Text(
                '2. Identifikasi Penyakit: Salah satu fitur unggulan dari aplikasi ini adalah kemampuannya untuk mendeteksi berbagai penyakit yang mungkin menyerang tanaman anggur Anda. Dari bercak bakteri hingga virus mozaik, aplikasi kami dapat memberikan hasil analisis yang tepat dan cepat.\n',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                'Manfaat Aplikasi:',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 4.0),
              const Text(
                '- Memantau Kondisi Tanaman dengan Lebih Efisien: Aplikasi ini memungkinkan Anda untuk secara real-time memantau kondisi tanaman dan mendeteksi penyakit yang mungkin menyerang tanaman Anda. Dengan informasi yang akurat dan cepat, Anda dapat mengambil tindakan yang tepat untuk menjaga kesehatan dan produktivitas tanaman.',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 4.0),
              const Text(
                '- Meningkatkan Hasil Panen: Dengan deteksi dini tentang penyakit, Anda dapat mengambil langkah-langkah pencegahan atau perawatan yang tepat untuk mencegah kerugian panen dan meningkatkan hasil produksi anggur Anda.',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 4.0),
              const Text(
                '- Mengoptimalkan Penggunaan Sumber Daya: Dengan aplikasi ini, Anda dapat mengoptimalkan penggunaan sumber daya seperti air dan pestisida karena dapat mengidentifikasi kebutuhan tanaman dengan lebih tepat dan efisien.\n',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                'Kami mengucapkan terima kasih atas kepercayaan Anda menggunakan Aplikasi ViticScan APP Deteksi Penyakit Daun Anggur. Tim kami selalu siap untuk membantu dan merespons setiap pertanyaan atau masukan yang Anda miliki. Semoga aplikasi ini memberikan manfaat nyata bagi usaha pertanian Anda!',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Salam hangat,',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                'Tim Pengembang',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 20.0),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/fotoramaboss.jpg'), // Replace with your photo path
                        ),
                        border: Border.all(
                          color: Colors.green,
                          width: 4,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'RAMA WIDIYADHANA',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5.0),
                    Container(
                      width: 50, // Set a smaller width for the icon container
                      height: 50, // Set a smaller height for the icon container
                      child: IconButton(
                        icon: Image.asset('assets/images/logowawarna.png'), // Replace with your WhatsApp icon path
                        iconSize: 30, // Adjusted icon size
                        padding: EdgeInsets.zero, // Remove padding around the icon
                        constraints: BoxConstraints(), // Remove default constraints
                        onPressed: () {
                          _launchURL('https://wa.me/6281225224421'); // Replace with your WhatsApp link
                        },
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
}