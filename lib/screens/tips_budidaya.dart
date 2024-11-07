import 'package:flutter/material.dart';

class TipzBudidaya extends StatelessWidget {
  const TipzBudidaya({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artikel Tentang Anggur'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.green[50],
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'Artikel Tentang Anggur',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          ArticleItem(
            title: '5 Penyakit Tanaman Anggur yang Merugikan',
            description: 'Anggur terkenal sebagai buah yang harganya mahal. Namun, harga jual buah ini tergantung pada kualitasnya.',
            image: 'assets/images/articel1.jpg',
            detail: 'Anggur terkenal sebagai buah yang harganya mahal. Namun, harga jual buah ini tergantung pada kualitasnya. Untuk mendapatkan kualitas anggur terbaik, teknik budidaya yang dilakukan juga harus benar. Meskipun demikian, budidaya anggur seringkali mengalami kendala. Salah satu kendalanya yaitu serangan patogen penyebab penyakit tanaman anggur. Serangan patogen tersebut menyebabkan pertumbuhan tanaman anggur terganggu dan mempengaruhi kualitas buah anggur yang dihasilkan. Oleh karena itu, pengendalian penyakit pada tanaman anggur harus dilakukan sedini mungkin agar tidak menyebabkan kerusakan yang parah. Lantas, apa sajakah penyakit yang sering dijumpai pada tanaman anggur? Artikel ini telah tayang di Kompas.com dengan judul "5 Penyakit Tanaman Anggur yang Merugikan".',
          ),
          ArticleItem(
            title: 'Penyakit Umum pada Daun Anggur',
            description: 'Pemilihan, waktu, dan penerapan semprotan yang tepat sangatlah penting. Cakupan menyeluruh pada seluruh bagian tanaman anggur diperlukan dan semprotan harus dilakukan sampai limpasan',
            image: 'assets/images/articel2.jpg',
            detail: 'A. Busuk Daun: A. Busuk Hitam: Busuk hitam, yang disebabkan oleh jamur Guignardia bidwellii, mungkin merupakan penyakit anggur paling serius di Connecticut. Jamur ini dapat menginfeksi seluruh bagian hijau tanaman merambat (termasuk daun, sulur, dan pucuk baru), serta buah beri. Namun daun dewasa dan buah matang tidak rentan. Infeksi daun pertama kali muncul sebagai bintik merah di permukaan daun bagian atas pada akhir musim semi. Bintik-bintik melingkar ini membesar dan menjadi cokelat hingga coklat muda dengan batas gelap yang jelas. Struktur buah jamur yang kecil, runcing, dan berwarna hitam sering kali berkembang di tengah-tengah bintik-bintik ini. Kerusakan paling serius biasanya terjadi pada buah beri. Pada buah, infeksi pertama kali muncul berupa bintik-bintik keputihan yang membesar hingga area cekung dengan tepi berwarna gelap. Infeksi yang signifikan biasanya terjadi ketika buah anggur berukuran sebesar kacang polong atau lebih besar. Seiring berkembangnya infeksi, buah menjadi hitam, keriput, mumi, dan terlihat seperti kismis. Buah anggur yang terinfeksi sering kali pecah, hanya menyisakan batangnya.',
          ),
          ArticleItem(
            title: 'wikifarmer Hama dan Penyakit Anggur yang Umum',
            description: 'Berbagai hama dan penyakit anggur yang umum pada tenaman anggur.',
            image: 'assets/images/articel3.jpg',
            detail: 'Hama: Phylloxera: Phylloxera vastatrix (PLANCHON), adalah kutu perusak yang merusak sistem akar anggur, yang terutama menjadi alasan pemanfaatan tanaman graft di Eropa. Hama ini berasal dari Amerika, di mana sebagian besar varietas anggur telah mengembangkan kekebalan terhadapnya. Di Eropa, ini pertama kali muncul sekitar 1850-60 dan sejak itu merupakan salah satu musuh tanaman anggur utama. Serangga memakan akar dan daun tanaman. Kita dapat mengenali phylloxera karena penampilan galls pada akar dan terkadang pada dedaunan. Kerusakan pada akar adalah bencana besar, karena hama dapat menghancurkan sistem akar tanaman sepenuhnya. Satu-satunya ukuran manajemen untuk varietas Eropa adalah mencangkokkannya di batang bawah Amerika, karena beberapa varietas Amerika resisten terhadap kutu. Ngengat pohon anggur Eropa:',
          ),
          ArticleItem(
            title: 'Tanaman Anggur Anda Terkena Karat Daun, Begini Cara Mengatasinya',
            description: 'Tanaman anggur sering diserang penyakit karat daun. Penyakit ini disebabkan jamur physopella vitis. Penyakit karat daun pada tanaman anggur ini dapat mengakibatkan dampak negatif yang sangat luar biasa.',
            image: 'assets/images/articel4.png',
            detail: 'Tanaman anggur sering diserang penyakit karat daun. Penyakit ini disebabkan jamur physopella vitis. Penyakit karat daun pada tanaman anggur ini dapat mengakibatkan dampak negatif yang sangat luar biasa. Karena jika tidak segera dikendalikan, penyakit karat daun ini dapat menghabiskan seluruh daun tanaman anggur yang dibudidayakan. Penyakit ini juga mengakibatkan pertumbuhan serta proses pembuahan tanaman anggur tidak maksimal. Daun anggur yang terserang penyakit karat daun ditandai dengan adanya bercak kekuningan pada permukaan daun dan jika dibiarkan lama kelamaan akan menjadi coklat dan mengering. Dan dibagian bawah daun terdapat serbuk berwarna kekuningan yang jika disentuh mudah runtuh seperti debu, dan ini adalah spora jamur physopella vitis. Spora inilah yang dapat menyebabkan penyebaran penyakit karat daun pada daun dan juga pada tanaman yang lainnya. Karat daun ini biasanya menyerang pada daun-daun yang sudah tua. Mengingat dampak buruk yang diakibatkan oleh karat daun ini, maka jika terdapat gejala serangan harus segera diatasi sebelum serangannya meluas dan semakin parah.',
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

  const ArticleItem({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
    required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
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
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(description),
                  SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            title: title,
                            image: image,
                            detail: detail,
                          ),
                        ),
                      );
                    },
                    child: Text(
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

  const DetailScreen({
    Key? key,
    required this.title,
    required this.image,
    required this.detail,
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
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            SizedBox(height: 16),
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              detail,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}