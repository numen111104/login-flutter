import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'BiggerText.dart';
// import 'scaffold.dart';
// import 'resep.dart';
//import 'wisata_tidore.dart';
//import 'button.dart';
import 'login.dart';

void main() => runApp(const
MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Flutter',
      theme: ThemeData(),
      home: const LoginPage(),
      );
  }
}

class Heading extends StatelessWidget {
  final String text;

  const Heading({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}