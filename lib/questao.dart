import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  const Questao(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //cor interna do container em volta da questão
        color: const Color.fromARGB(255, 255, 255, 255),
        //add de borda em todo o container em volta da questão
        border: Border.all(
          //cor da borda
          color: const Color.fromARGB(163, 154, 0, 193),
          //espessura da borda
          width: 2,
        ),
        //add de arredondamento nos cantos das bordas
        borderRadius: const BorderRadius.all(
          //ajuste de valor do raio das bordas, que cria um efeito de borda arredondada
          Radius.circular(10),
        ),
      ),
      width: double.infinity,
      //ajuste de margem e tipo de margem na estrutura das questões
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
      //add de espaçamento interno no container das questões
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          texto,
          style: const TextStyle(fontSize: 22),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
