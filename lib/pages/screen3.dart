import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  // Função para voltar à tela anterior (Screen2)
  void _goBack(BuildContext context) {
    Navigator.pop(context); // Retorna para a tela anterior
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 3'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () =>
              _goBack(context), // Chama a função para voltar para a tela 2
          child: Text('Voltar para a Tela 2'),
        ),
      ),
    );
  }
}
