import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  const Resultado(this.pontuacao, this.quandoReiniciarQuestionario,
      {super.key});

  String get fraseResultado {
    if (pontuacao < 20) {
      return 'Gosto peculiar!';
    } else if (pontuacao < 25) {
      return 'Você tem salvação';
    } else if (pontuacao < 30) {
      return 'Tens um bom gosto';
    } else {
      return 'Influenciador';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: Text(
            'Obrigado pelas respotas!',
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
        ),
        ElevatedButton(
          onPressed: quandoReiniciarQuestionario,
          child: Text('Voltar ao inicio!',
              style: TextStyle(fontSize: 18, color: Colors.blueGrey)),
        )
      ],
    );
  }
}
