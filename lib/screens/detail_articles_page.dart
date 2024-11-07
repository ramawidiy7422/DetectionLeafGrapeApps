import 'package:flutter/material.dart';

class DetailArticlePage extends StatefulWidget {
  const DetailArticlePage({Key? key}) : super(key: key);

  @override
  State<DetailArticlePage> createState() => _DetailArticlePageState();
}

class _DetailArticlePageState extends State<DetailArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Penyakit Anggur'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.green[50],
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ArticleItem(
            title: 'Karat Daun (Leaf Rust)',
            description: 'Penyakit karat daun pada anggur disebabkan oleh jamur Phakopsora euvitis.',
            image: 'assets/images/karatdaun.jpg',
            detail: 'Penyakit karat daun pada anggur disebabkan oleh jamur Phakopsora euvitis. Gejala utamanya adalah timbulnya bercak-bercak karat berwarna kuning hingga coklat pada permukaan daun. Gejala: Muncul bercak-bercak karat berwarna kuning hingga coklat pada permukaan daun anggur. Bercak-bercak awalnya kecil, kemudian melebar dan dapat menyatu menjadi area yang lebih besar.',
            prevention: [
              'Menggunakan fungisida yang tepat.',
              'Gunakan fungisida berbahan aktif triadimefon, tebukonazol, atau copper oksida secara rutin sesuai rekomendasi.',
              'Jaga kebersihan dan sirkulasi udara yang baik di kebun anggur.',
              'Pilih varietas anggur yang tahan terhadap penyakit karat daun.',
            ],
            treatment: [
              'Buang sisa-sisa tanaman yang terinfeksi dari kebun dan musnahkan dengan cara yang benar.',
              'Gunakan fungisida berbahan aktif triadimefon, tebukonazol, atau cooper oksida.',
              'Rotasi penggunaan fungisida dengan mekanisme kerja yang berbeda untuk menghindari resistensi.',
              'Lakukan penyemprotan secara rutin sesuai dengan dosis dan interval waktu yang direkomendasikan.'
            ],
          ),
          ArticleItem(
            title: 'Hawar Daun (Downy Mildew)',
            description: 'Penyakit ini menyebabkan daun anggur berubah warna menjadi kuning dan jatuh.',
            image: 'assets/images/daumengguning.jpg',
            detail: 'Downy mildew disebabkan oleh jamur Plasmopara viticola. Gejala awalnya adalah bercak kuning pada daun yang kemudian berubah menjadi coklat Penyakit hawar daun pada anggur disebabkan oleh jamur Plasmopara viticola. Gejala utamanya adalah timbulnya bercak-bercak coklat kehitaman pada permukaan daun anggur..',
            prevention: [
              'Perawatan Tanaman: Jaga sirkulasi udara yang baik di sekitar tanaman anggur dengan melakukan pemangkasan dan pembukaan kanopi..',
              'Bersihkan dan buang semua daun, ranting, atau bagian tanaman anggur yang terinfeksi.'
                  'Buang sisa-sisa tanaman yang terinfeksi dari kebun dan musnahkan dengan cara yang benar.'
                  'Hindari menyentuh tanaman yang sehat setelah menyentuh tanaman terinfeksi untuk mencegah penyebaran penyakit.'
            ],
            treatment: [
              'Terapkan tindakan pencegahan sejak awal, seperti melakukan sanitasi kebun secara rutin.',
              'Pantau kondisi tanaman anggur secara berkala untuk mendeteksi gejala penyakit sedini mungkin.'
                  'Lakukan aplikasi fungisida secara preventif sebelum munculnya gejala penyakit.'
                  'Jaga kesehatan tanaman dengan manajemen nutrisi dan perawatan yang tepat.'
            ],
          ),
          ArticleItem(
            title: 'Embun Tepung (Powdery Mildew)',
            description: 'Penyakit powdery mildew pada anggur disebabkan oleh jamur Erysiphe necator (sebelumnya Uncinula necator).',
            image: 'assets/images/powdery.jpg',
            detail: 'amur tepung adalah istilah umum untuk sekelompok penyakit tanaman. Pada tanaman anggur, penyakit ini disebabkan oleh jamur yang awalnya bernama Uncinula necator , kini berganti nama menjadi Erysiphe necator . Infeksi dan perkembangan penyakit selanjutnya dipengaruhi oleh banyak faktor termasuk adanya jaringan selentingan yang terinfeksi, spora, dan terjadinya kondisi cuaca tertentu. Perkembangan penyakit pada awal musim mungkin lambat tergantung pada kondisi cuaca, namun biasanya tidak terhambat di sebagian besar wilayah Australia. Perkembangan penyakit bisa lambat pada awal musim ketika kondisi kurang menguntungkan bagi jamur. Waktu kritis untuk berkembangnya embun tepung terjadi pada periode sebelum pembungaan hingga pembentukan buah. Penyakit ini dapat ditularkan dari musim ke musim pada tunas yang terinfeksi, atau sebagai spora istirahat, yang disebut chasmothecia (sebelumnya dikenal sebagai cleistothecia). Banyak spesies dan varietas tanaman anggur yang penting secara komersial rentan terhadap infeksi embun tepung. Pengendalian awal musim penting untuk mencegah penumpukan penyakit.',
            prevention: [
              'Lakukan sanitasi kebun dengan membersihkan sisa-sisa tanaman yang terinfeksi',
              'Gunakan fungisida berbahan aktif belerang, penkonazol, atau miklobutanil secara rutin sesuai rekomendasi.',
              'Jaga sirkulasi udara yang baik di kebun anggur melalui pemangkasan dan pembukaan kanopi.',
              'Pilih varietas anggur yang tahan atau toleran terhadap penyakit powdery mildew.'
                  'Penanganan penyakit powdery mildew pada anggur pada prinsipnya sama dengan penanganan penyakit lainnya, yaitu dengan melakukan sanitasi, aplikasi fungisida, perawatan tanaman, dan pemilihan varietas yang tahan.'
            ],
            treatment: [
              'Perawatan Tanaman: Hindarkan kondisi lembab yang berlebihan di sekitar tanaman dengan menjaga drainase yang baik..',
              'Hindari irigasi dengan air yang tergenang untuk mencegah penyebaran penyakit..',
              'Lakukan penyemprotan secara rutin sesuai dengan dosis dan interval waktu yang direkomendasikan.',
              'Hindari menyentuh tanaman yang sehat setelah menyentuh tanaman terinfeksi untuk mencegah penyebaran penyakit.',
              'Bersihkan dan buang semua daun, ranting, atau bagian tanaman anggur yang terinfeksi.'
            ],
          ),
          ArticleItem(
            title: 'Bercak Hitam (Black Root)',
            description: 'Penyakit ini menyebabkan bintik-bintik hitam pada anggur .',
            image: 'assets/images/bercakhitam.jpg',
            detail: 'Black rot disebabkan oleh jamur Guignardia bidwellii. Gejalanya termasuk bintik-bintik hitam pada daun, batang, dan buah. Penyakit black root atau bercak hitam pada daun anggur disebabkan oleh jamur Dactylium necator. Gejala utama penyakit ini adalah munculnya bercak-bercak hitam atau coklat kehitaman pada daun anggur.',
            prevention: [
              'Menghilangkan bagian tanaman yang terinfeksi.',
              'Menggunakan fungisida.'
                  'Lakukan sanitasi kebun dengan membersihkan sisa-sisa tanaman yang terinfeksi'
                  'Gunakan fungisida berbahan aktif propamokarb, difenokonazol, atau klorotalonil secara rutin sesuai rekomendasi.'
                  'Jaga kebersihan dan sirkulasi udara yang baik di kebun anggur.'
                  'Pilih varietas anggur yang tahan terhadap penyakit black root.'
            ],
            treatment: [
              'Bersihkan dan buang semua daun, ranting, atau bagian tanaman anggur yang terinfeksi.',
              'Hindari menyentuh tanaman yang sehat setelah menyentuh tanaman terinfeksi untuk mencegah penyebaran penyakit..'
                  'Pastikan penyemprotan dilakukan merata pada seluruh bagian tanaman anggur.'
            ],
          ),
          ArticleItem(
            title: 'Hawar Abu-abu (Gray Mold)',
            description:
            'Penyakit ini menyebabkan hawar abu-abu pada tanaman anggur.',
            image: 'assets/images/graymold.jpg',
            detail:
            'Gray mealybug disebabkan oleh serangga mealybug. Gejala utamanya adalah hawar abu-abu yang terlihat pada daun dan batang tanaman anggur.',
            prevention: [
              'Membersihkan tanaman secara teratur untuk menghilangkan serangga mealybug.',
              'Menggunakan insektisida yang direkomendasikan secara rutin.',
              'Menerapkan karantina pada tanaman baru sebelum ditanam di kebun anggur.',
              'Memastikan sirkulasi udara yang baik di sekitar tanaman anggur.'
            ],
            treatment: [
              'Menghilangkan secara manual serangga mealybug dari tanaman.',
              'Menerapkan insektisida yang sesuai untuk mengendalikan populasi serangga.',
              'Memantau secara berkala kondisi tanaman untuk deteksi dini serangan.',
            ],
          ),
          ArticleItem(
            title: 'Antraknosa (Anthracnose)',
            description: 'Penyakit ini menyebabkan bercak-bercak hitam pada tanaman anggur.',
            image: 'assets/images/antaroksa.jpg',
            detail: 'Antraknosa disebabkan oleh jamur Colletotrichum. Gejala utamanya adalah bercak-bercak hitam yang terlihat pada daun dan batang tanaman anggur.',
            prevention: [
              'Membersihkan tanaman secara teratur untuk menghilangkan sisa-sisa tanaman yang terinfeksi.',
              'Menggunakan fungisida yang direkomendasikan secara rutin.',
              'Menerapkan karantina pada tanaman baru sebelum ditanam di kebun anggur.',
              'Memastikan sirkulasi udara yang baik di sekitar tanaman anggur.'
            ],
            treatment: [
              'Menghilangkan secara manual bagian tanaman yang terinfeksi.',
              'Menerapkan fungisida yang sesuai untuk mengendalikan pertumbuhan jamur.',
              'Memantau secara berkala kondisi tanaman untuk deteksi dini serangan.',
            ],
          ),
        ],
      ),
    );
  }
}

class ArticleItem extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final String detail;
  final List<String> prevention;
  final List<String> treatment;

  const ArticleItem({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
    required this.detail,
    required this.prevention,
    required this.treatment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            title: title,
                            image: image,
                            detail: detail,
                            prevention: prevention,
                            treatment: treatment,
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'Baca Selengkapnya',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String title;
  final String image;
  final String detail;
  final List<String> prevention;
  final List<String> treatment;

  const DetailScreen({
    Key? key,
    required this.title,
    required this.image,
    required this.detail,
    required this.prevention,
    required this.treatment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.green[50],
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              detail,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 16),
            const Text(
              'Pencegahan:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(height: 8),
            for (var item in prevention)
              Text(
                '• $item',
                style: const TextStyle(color: Colors.black),
              ),
            const SizedBox(height: 16),
            const Text(
              'Penanganan:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(height: 8),
            for (var item in treatment)
              Text(
                '• $item',
                style: const TextStyle(color: Colors.black),
              ),
          ],
        ),
      ),
    );
  }
}