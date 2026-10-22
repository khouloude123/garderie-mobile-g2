import 'package:flutter/material.dart';

void main() {
  runApp(const MaGarderieApp());
}

class MaGarderieApp extends StatelessWidget {
  const MaGarderieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ma Garderie',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Text('Ma Garderie')),
      ),
    );
  }
}