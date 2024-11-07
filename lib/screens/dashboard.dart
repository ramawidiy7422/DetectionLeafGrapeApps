import 'package:flutter/material.dart';
import 'package:projectskripsideteksi/core/app_routes.dart';

class MyDashboardPage extends StatelessWidget {
  const MyDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.green[50],
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                children: [
                  _buildDashboardItem(
                    context,
                    icon: Icons.camera,
                    label: 'Deteksi Daun',
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.dashboard);
                    },
                  ),
                  _buildDashboardItem(
                    context,
                    icon: Icons.energy_savings_leaf,
                    label: 'Penyakit Anggur',
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.detailArticle);
                    },
                  ),
                  _buildDashboardItem(
                    context,
                    icon: Icons.save_as,
                    label: 'Riwayat Deteksi',
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.hamapenyakit);
                    },
                  ),
                  _buildDashboardItem(
                    context,
                    icon: Icons.tips_and_updates,
                    label: 'Artikel Anggur',
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.tipzbudidaya);
                    },
                  ),
                  _buildDashboardItem(
                    context,
                    icon: Icons.menu_book_outlined,
                    label: 'Panduan',
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.detailprofil);
                    },
                  ),
                  _buildDashboardItem(
                    context,
                    icon: Icons.info_outlined,
                    label: 'About',
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.aboutaplikasi);
                    },
                  ),
                ],
              ),
            ),
          ),
          _buildFooter(context),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(BuildContext context,
      {required IconData icon, required String label, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          border: Border.all(
            color: Colors.green,
            width: 2.0,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.green),
            const SizedBox(height: 10),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildFooter(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0), // Mengurangi tinggi padding
      width: double.infinity, // Memastikan footer penuh lebar
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Mengurangi ukuran kolom seminimal mungkin
        children: [
          Image.asset('assets/images/logo.png', height: 30), // Ganti dengan path gambar yang sesuai
          const SizedBox(height: 5),
          Text(
            '© 2024 VitisScan. All rights reserved.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'Versi 1.0.0',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}