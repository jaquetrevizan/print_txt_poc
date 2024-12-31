<h1 align="center" style="font-weight: bold;">POC de Impressão TXT no Flutter</h1>

Prova de conceito de um sistema de impressão de arquivos TXT desenvolvido em Flutter, com suporte para criação, abertura no bloco de notas e envio direto para impressoras configuradas no Windows.

<h2>✨ Funcionalidades</h2>

- Criação automática de arquivos TXT no diretório padrão do sistema.
- Abertura direta do arquivo no Bloco de Notas (Notepad).
- Impressão do arquivo em uma impressora configurada no sistema.

<h2>🚀 Tecnologias Utilizadas </h2>

- [Flutter](https://docs.flutter.dev/): framework principal para desenvolvimento multiplataforma.
- [Dart](https://dart.dev/guides): linguagem de programação usada pelo Flutter.
- [path_provider](https://pub.dev/packages/path_provider): Para acesso a diretórios específicos no sistema.
- [Process.run](https://api.flutter.dev/flutter/dart-io/Process-class.html): Para execução de comandos do sistema operacional.

<h2>📦 Instalação e Execução</h2>

Para rodar este projeto localmente, siga os passos:  

1. Clone este repositório:  
   ```bash  
   git clone https://github.com/seu-usuario/print_txt_poc.git 
   ```
   
2. Acesse o diretório do projeto:  
   ```bash  
   cd print_txt_poc  
   ```
   
3. Instale as dependências:  
   ```bash  
   flutter pub get  
   ```
   
4. Execute o app:  
   ```bash  
   flutter run -d windows  
   ```

<h2>🎯 Objetivo do Estudo</h2>

Este projeto foi desenvolvido com o foco em:

- Explorar a integração entre Flutter e funcionalidades específicas do Windows.
- Criar um sistema básico de impressão de arquivos TXT.

<h2>✉️ Dúvidas</h2>

Se você tiver alguma dúvida sobre este repositório, envie-a para trevizan.jaqueline@gmail.com.



