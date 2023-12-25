import 'package:flutter/material.dart';
import 'package:houzz/pages/home.dart';
import 'package:houzz/pages/show_decore.dart';

main() {
  runApp(Houzz());
}

class Houzz extends StatefulWidget {
  const Houzz({super.key});

  @override
  State<Houzz> createState() => _HouzzState();
}

class _HouzzState extends State<Houzz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
