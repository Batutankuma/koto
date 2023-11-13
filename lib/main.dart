import 'package:flutter/material.dart';
import 'package:koto/screens/pages/index_pages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Koto',
      home: IndexPage(),
    );
  }
}
