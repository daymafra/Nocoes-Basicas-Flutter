import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const Resposta(this.texto, this.quandoSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // botão com borda, sem cor de fundo
      child: OutlinedButton(
        onPressed: quandoSelecionado,
        // estilo do botão
        style: OutlinedButton.styleFrom(
          //cor da fonte do texto do botão
          foregroundColor: const Color.fromARGB(255, 71, 71, 71),
          //cor da borda do botão
          side: const BorderSide(
            color: Color.fromARGB(163, 154, 0, 193),
            // espessura da borda
            width: 2,
          ),
          //cor interna dos botões
          backgroundColor: Colors.white,
          //add de arredondamento nos cantos das bordas
          shape: RoundedRectangleBorder(
            //ajuste de valor do raio das bordas, que cria um efeito de borda arredondada
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        //espaçamento interno dos botões
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Text(
            texto,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
