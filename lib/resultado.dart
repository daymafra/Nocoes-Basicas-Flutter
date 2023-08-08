import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  const Resultado(this.pontuacao, this.quandoReiniciarQuestionario,
      {super.key});

  String get fraseResultado {
    if (pontuacao < 100) {
      return 'Precisa melhorar :(';
    } else if (pontuacao < 120) {
      return 'Você é bom, mas dá pra ser melhor ;)';
    } else if (pontuacao < 160) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // Espaçamento interno do container
          padding: const EdgeInsets.all(10),
          //altura do container
          height: 50,
          decoration: BoxDecoration(
            // Cor de fundo do container
            color: const Color.fromARGB(255, 255, 255, 255),
            // Borda arredondada
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              fraseResultado,
              style: const TextStyle(fontSize: 22),
            ),
          ),
        ),
        //add de espaçamento entre o botão reiniciar e o texto de resultado
        const SizedBox(height: 60),
        // botão com borda, sem cor de fundo
        OutlinedButton(
          onPressed: quandoReiniciarQuestionario,
          style: OutlinedButton.styleFrom(
            //cor da fonte do texto do botão
            foregroundColor: const Color.fromARGB(255, 71, 71, 71),
            // add de borda
            side: const BorderSide(
              //cor da borda
              color: Color.fromARGB(163, 154, 0, 193),
              //espessura da borda
              width: 2,
            ),
          ),
          child: const Text(
            'Reiniciar?',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        )
      ],
    );
  }
}
