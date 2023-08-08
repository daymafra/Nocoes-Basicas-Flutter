import 'package:flutter/material.dart';
import 'resposta.dart';
import 'questao.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, dynamic>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
    super.key,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    dynamic respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : [];

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto']),
        if (respostas != null && respostas.isNotEmpty)
          ...respostas.map((resp) {
            String respString = resp['texto'];
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Resposta(
                respString,
                () => responder(resp['pontuação']),
              ),
            );
          }).toList(),
      ],
    );
  }
}
