import 'package:flutter_choco_grid/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(labelSmall: TextStyle(color: Colors.white)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}