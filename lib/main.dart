import 'package:flutter/material.dart';
import 'package:flutter_lanjutan/MURAJAAH/Murajaah.dart';
import 'package:flutter_lanjutan/MURAJAAH/Murajaah2.dart';
import 'package:flutter_lanjutan/MURAJAAH/Murajaah3.dart';
import 'package:flutter_lanjutan/Mini%20Project/mp1.dart';
import 'package:flutter_lanjutan/Mini%20Project/mp2.dart';
import 'package:flutter_lanjutan/Mini%20Project/mp3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home:  SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    // pindah ke Mp3 setelah 3 detik
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Mp3()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.menu_book,
              size: 100,
              color: Colors.black,
            ),
            SizedBox(height: 20),
            Text(
              "Murajaah App",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}