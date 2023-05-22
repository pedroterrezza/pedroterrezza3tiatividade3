import 'package:flutter/material.dart';

void main() {
  runApp(AulaGrupoUm());
}

class AulaGrupoUm extends StatefulWidget {
  @override
  State<AulaGrupoUm> createState() => _AulaGrupoUmState();
}

class _AulaGrupoUmState extends State<AulaGrupoUm> {
  String corSelecionada = '';

  void selecionarCor(String cor) {
    setState(() {
      corSelecionada = cor;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pedro Terrezza"),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () => selecionarCor('azul'),
              child: Text('TELA AZUL'),
            ),
            ElevatedButton(
              onPressed: () => selecionarCor('verde'),
              child: Text('TELA VERDE'),
            ),
            ElevatedButton(
              onPressed: () => selecionarCor('preta'),
              child: Text('TELA PRETA'),
            ),
            Expanded(
              child: Container(
                color: corSelecionada == 'azul'
                    ? Colors.blue
                    : corSelecionada == 'verde'
                        ? Colors.green
                        : corSelecionada == 'preta'
                            ? Colors.black
                            : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



