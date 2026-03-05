import 'package:flutter/material.dart';
import 'package:flutter_lanjutan/MURAJAAH/Murajaah.dart';
import 'package:flutter_lanjutan/MURAJAAH/Murajaah2.dart';
import 'package:flutter_lanjutan/Mini%20Project/mp1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mp1(),
    );
  }
}

