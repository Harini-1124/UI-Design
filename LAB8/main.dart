import 'package:flutter/material.dart';
import 'package:media_query/mobile.dart';
import 'package:media_query/tablet.dart';
import 'package:media_query/pc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Media query Responsive",
      home: const Desktop(),
    );
  }
}

class Desktop extends StatefulWidget {
  const Desktop({super.key});
  @override
  State<Desktop> createState() => _Desktop();
}

class _Desktop extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Responsive UI")),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 600 && constraints.maxWidth <= 1200) {
            return const Tablet();
          } else if (constraints.maxWidth < 600) {
            return const Mobile();
          } else {
            return const pc();
          }
        },
      ),
    );
  }
}
