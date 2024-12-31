import 'package:flutter/material.dart';
import 'package:print_txt_poc/print_txt.dart';
import 'package:print_txt_poc/save_txt.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Criar e Imprimir arquivo .txt no Flutter"),
        ),
        // body: SaveTxt(),
        body: PrintTxt(),
      ),
    );
  }
}
