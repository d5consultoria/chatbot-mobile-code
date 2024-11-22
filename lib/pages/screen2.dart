import 'package:flutter/material.dart';
import 'screen3.dart'; // Importa a terceira tela

class Screen2 extends StatelessWidget {
  // Função para voltar à tela anterior (Screen1)
  void _goBack(BuildContext context) {
    Navigator.pop(context); // Retorna para a tela anterior
  }

  // Função para navegar para a tela 3
  void _goToScreen3(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => Screen3()), // Navega para a Screen3
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () =>
                  _goBack(context), // Chama a função para voltar para a tela 1
              child: Text('Voltar para a Tela 1'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _goToScreen3(
                  context), // Chama a função para navegar para a tela 3
              child: Text('Ir para a Tela 3'),
            ),
          ],
        ),
      ),
    );
  }
}
