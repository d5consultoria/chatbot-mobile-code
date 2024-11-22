import 'package:flutter/material.dart';
import 'screen2.dart'; // Importa a segunda tela

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen1(), // Inicia com a Screen1
    );
  }
}

class Screen1 extends StatelessWidget {
  // Função para navegar até a segunda tela
  void _goToScreen2(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => Screen2()), // Navega para a Screen2
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 1 - Página Inicial'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () =>
              _goToScreen2(context), // Chama a função ao pressionar o botão
          child: Text('Ir para a Tela 2'),
        ),
      ),
    );
  }
}
