import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class PrintTxt extends StatelessWidget {
  const PrintTxt({super.key});

  Future<String> createAndSaveTxtFile(String content) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final path = '${directory.path}/example.txt';
      final file = File(path);

      await file.writeAsString(content);
      print('Arquivo salvo em: $path');
      return path;
    } catch (e) {
      print('Erro ao criar ou salvar o arquivo: $e');
      return '';
    }
  }

  Future<void> printFileToPrinter(String filePath, String printerName) async {
    try {
      final result = await Process.run('print', ['/d:$printerName', filePath]);

      if (result.exitCode == 0) {
        print('Arquivo enviado para a impressora $printerName.');
      } else {
        print('Erro ao enviar o arquivo para a impressora: ${result.stderr}');
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
        final content = 'Este é um exemplo de conteúdo para o arquivo TXT.';

        final filePath = await createAndSaveTxtFile(content);

        if (filePath.isNotEmpty) {

          const printerName = r'\\DESKTOP-A515-54\Microsoft Print to PDF';

          await printFileToPrinter(filePath, printerName);
        } else {
          print('Erro ao criar o arquivo.');
        }
      },
      child: const Text('Criar e Imprimir TXT'),
    ));
  }
}
