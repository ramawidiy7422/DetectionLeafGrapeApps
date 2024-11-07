import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:projectskripsideteksi/core/app_routes.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.popAndPushNamed(context, AppRoutes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200], // Ubah warna latar belakang menjadi hijau
      body: Center(
        child: Lottie.asset('assets/lootie/Animation - 1721058278792.json'), // Path ke animasi Lottie
      ),
    );
  }
}