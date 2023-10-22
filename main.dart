import 'package:coba/pages/Tugas_1.dart';
import 'package:coba/pages/home_page.dart';
import 'package:coba/pages/lat2.dart';
import 'package:coba/pages/latihan_3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Tugas1(),
    );
  }
}


