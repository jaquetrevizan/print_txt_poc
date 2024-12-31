import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class SaveTxt extends StatelessWidget {
  const SaveTxt({super.key});

  Future<String> createAndSaveTxtFile(String content) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final path = "${directory.path}/example.txt";
      final file = File(path);

      await file.writeAsString(content);
      print("Arquivo salvo em: $path");
      return path;
    } catch (e) {
      print("Erro ao criar ou salvar o arquivo: $e");
      return "";
    }
  }

  Future<void> printTxtFile(String path) async {
    try {
      final result = await Process.run("notepad.exe", [path]);
      if (result.exitCode == 0) {
        print('Arquivo enviado para impressão.');
      } else {
        print('Erro ao enviar o arquivo para impressão: ${result.stderr}');
      }
    } catch (e) {
      print('Erro ao tentar imprimir o arquivo: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          final content = "Este é um exemplo de texto.";
          final path = await createAndSaveTxtFile(content);

          if (path.isNotEmpty) {
            await printTxtFile(path);
          } else {
            print('Erro ao criar o arquivo.');
          }
        },
        child: const Text('Criar e Imprimir TXT'),
      ),
    );
  }
}
