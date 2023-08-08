import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resultado.dart';
import 'questionario.dart';

main() {
  runApp(const PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = [
    {
      'texto': 'Qual é a linguagem de programação usada no Flutter?',
      'respostas': [
        {'texto': 'a) JavaScript', 'pontuação': 0},
        {'texto': 'b) Python', 'pontuação': 0},
        {'texto': 'c) Dart', 'pontuação': 10},
        {'texto': 'd) C++', 'pontuação': 0},
      ],
    },
    {
      'texto':
          'Em Flutter, qual é a função principal usada para construir a interface do usuário?',
      'respostas': [
        {'texto': 'a) buildUI()', 'pontuação': 0},
        {'texto': 'b) createUI()', 'pontuação': 0},
        {'texto': 'c) renderUI()', 'pontuação': 0},
        {'texto': 'd) build()', 'pontuação': 10},
      ],
    },
    {
      'texto': 'O que é uma Árvore de Widgets em Flutter?',
      'respostas': [
        {'texto': 'a) Uma lista de funções pré-construídas', 'pontuação': 0},
        {
          'texto':
              'b) Uma estrutura de dados para armazenar widgets invisíveis',
          'pontuação': 0
        },
        {'texto': 'c) Uma hierarquia de widgets organizada', 'pontuação': 10},
        {
          'texto': 'd) Uma coleção de imagens para interface do usuário',
          'pontuação': 0
        },
      ],
    },
    {
      'texto':
          'Qual widget é usado para criar um espaço vazio ou um separador entre elementos na interface?',
      'respostas': [
        {'texto': 'a) Spacer()', 'pontuação': 0},
        {'texto': 'b) Divider()', 'pontuação': 10},
        {'texto': 'c) EmptySpace()', 'pontuação': 0},
        {'texto': 'd) Gap()', 'pontuação': 0},
      ],
    },
    {
      'texto':
          'Qual widget é usado para empilhar widgets verticalmente em Flutter?',
      'respostas': [
        {'texto': 'a) Stack()', 'pontuação': 0},
        {'texto': 'b) Column()', 'pontuação': 10},
        {'texto': 'c) Row()', 'pontuação': 0},
        {'texto': 'd) Grid()', 'pontuação': 0},
      ],
    },
    {
      'texto': ' Como você conecta uma função a um evento de botão em Flutter?',
      'respostas': [
        {
          'texto': 'a) Apenas chamando a função no local desejado',
          'pontuação': 0
        },
        {'texto': 'b) Usando a classe "ButtonFunction"', 'pontuação': 0},
        {
          'texto': 'c) Atribuindo a função à propriedade "onPressed" do botão',
          'pontuação': 10
        },
        {'texto': 'd) Definindo a função como variável global', 'pontuação': 0},
      ],
    },
    {
      'texto': 'O que são funções anônimas em Dart?',
      'respostas': [
        {
          'texto': 'a) Funções que não têm nome e não podem ser chamadas',
          'pontuação': 0
        },
        {
          'texto': 'b) Funções que só podem ser usadas em widgets anônimos',
          'pontuação': 0
        },
        {
          'texto': 'c) Funções que podem ser chamadas apenas uma vez',
          'pontuação': 0
        },
        {
          'texto':
              'd) Funções que não têm um nome definido, mas podem ser chamadas e passadas como parâmetros',
          'pontuação': 10
        },
      ],
    },
    {
      'texto':
          'Em Dart, qual é o termo usado para declarar membros privados que só podem ser acessados dentro da classe?',
      'respostas': [
        {'texto': 'a) private member', 'pontuação': 0},
        {'texto': 'b) internal member', 'pontuação': 0},
        {'texto': 'c) protected member', 'pontuação': 0},
        {'texto': 'd) _privateMember', 'pontuação': 10},
      ],
    },
    {
      'texto':
          'Qual widget é frequentemente usado para criar margens, preenchimentos e bordas ao redor de outros widgets?',
      'respostas': [
        {'texto': 'a) Padding()', 'pontuação': 10},
        {'texto': 'b) Spacing()', 'pontuação': 0},
        {'texto': 'c) Margin()', 'pontuação': 0},
        {'texto': 'd) Border()', 'pontuação': 0},
      ],
    },
    {
      'texto':
          'Em um StatelessWidget, quais tipos de variáveis não podem ser modificados após a inicialização?',
      'respostas': [
        {'texto': 'a) Variáveis locais', 'pontuação': 0},
        {'texto': 'b) Variáveis estáticas', 'pontuação': 0},
        {'texto': 'c) Variáveis finais', 'pontuação': 10},
        {'texto': 'd) Variáveis de instância', 'pontuação': 0},
      ],
    },
    {
      'texto':
          'Qual é a diferença fundamental entre StatelessWidget e StatefulWidget?',
      'respostas': [
        {
          'texto': 'a) StatelessWidget é mais rápido que StatefulWidget',
          'pontuação': 0
        },
        {
          'texto':
              'b) StatelessWidget só pode conter widgets visíveis, enquanto StatefulWidget só pode conter widgets invisíveis',
          'pontuação': 0
        },
        {
          'texto':
              'c) StatelessWidget não pode ser atualizado após a criação, enquanto StatefulWidget pode ter seu estado alterado',
          'pontuação': 10
        },
        {
          'texto':
              'd) StatelessWidget requer menos recursos do sistema do que StatefulWidget',
          'pontuação': 0
        },
      ],
    },
    {
      'texto':
          'Qual widget é usado para criar uma lista de elementos com um único tipo de filho em Flutter?',
      'respostas': [
        {'texto': 'a) List()', 'pontuação': 0},
        {'texto': 'b) ListView()', 'pontuação': 10},
        {'texto': 'c) ArrayView()', 'pontuação': 0},
        {'texto': 'd) ItemList()', 'pontuação': 0},
      ],
    },
    {
      'texto':
          'Qual é a principal razão para dividir um aplicativo em vários widgets menores em Flutter?',
      'respostas': [
        {
          'texto': 'a) Tornar o código mais difícil de entender',
          'pontuação': 0
        },
        {'texto': 'b) Aumentar o tamanho do aplicativo', 'pontuação': 0},
        {'texto': 'c) Melhorar o desempenho', 'pontuação': 10},
        {
          'texto': 'd) Reduzir a quantidade de código necessária',
          'pontuação': 0
        },
      ],
    },
    {
      'texto':
          'Como você pode evitar acessar um índice inválido em uma lista de widgets?',
      'respostas': [
        {'texto': 'a) Usando try-catch', 'pontuação': 0},
        {
          'texto':
              'b) Verificando o tamanho da lista antes de acessar o índice',
          'pontuação': 10
        },
        {
          'texto': 'c) Ignorando o erro e continuando a execução',
          'pontuação': 0
        },
        {'texto': 'd) Convertendo a lista em uma matriz', 'pontuação': 0},
      ],
    },
    {
      'texto': 'Qual é a finalidade do widget Container em Flutter?',
      'respostas': [
        {'texto': 'a) Mostrar anúncios', 'pontuação': 0},
        {'texto': 'b) Exibir um vídeo', 'pontuação': 0},
        {'texto': 'c) Ajudar a criar layouts complexos', 'pontuação': 10},
        {'texto': 'd) Gerenciar o estado do aplicativo', 'pontuação': 0},
      ],
    },
    {
      'texto':
          'Como você define um widget como visível ou invisível em resposta a uma condição?',
      'respostas': [
        {'texto': 'a) Alterando a opacidade do widget', 'pontuação': 0},
        {
          'texto': 'b) Definindo a propriedade "visible" do widget',
          'pontuação': 0
        },
        {'texto': 'c) Usando o widget Visibility()', 'pontuação': 10},
        {
          'texto': 'd) Não é possível tornar widgets invisíveis',
          'pontuação': 0
        },
      ],
    },
    {
      'texto':
          'Qual é a principal vantagem de usar uma função anônima ao lidar com eventos?',
      'respostas': [
        {
          'texto':
              'a) Funções anônimas são sempre mais rápidas do que funções nomeadas',
          'pontuação': 0
        },
        {
          'texto':
              'b) Funções anônimas podem ser reutilizadas em diferentes partes do código',
          'pontuação': 10
        },
        {
          'texto':
              'c) Funções anônimas permitem que você evite lidar com eventos',
          'pontuação': 0
        },
        {
          'texto':
              'd) Funções anônimas têm acesso a mais variáveis do que funções nomeadas',
          'pontuação': 0
        },
      ],
    },
    {
      'texto': 'Qual é a finalidade do método setState em um StatefulWidget?',
      'respostas': [
        {'texto': 'a) Definir o estado inicial do widget', 'pontuação': 0},
        {
          'texto':
              'b) Atualizar o estado do widget e reconstruir a interface do usuário',
          'pontuação': 10
        },
        {'texto': 'c) Definir o estilo do widget', 'pontuação': 0},
        {'texto': 'd) Criar um novo widget filho', 'pontuação': 0},
      ],
    },
    {
      'texto':
          'Quando você deve usar um StatelessWidget em vez de um StatefulWidget?',
      'respostas': [
        {
          'texto':
              'a) Quando a interface do usuário precisa ser atualizada dinamicamente',
          'pontuação': 0
        },
        {
          'texto':
              'b) Quando a interface do usuário não precisa ser atualizada após a criação',
          'pontuação': 10
        },
        {
          'texto': 'c) Quando você precisa usar funções anônimas',
          'pontuação': 0
        },
        {
          'texto':
              'd) Quando o aplicativo precisa de várias árvores de widgets',
          'pontuação': 0
        },
      ],
    },
    {
      'texto':
          'Qual é a melhor prática para organizar e dividir um aplicativo Flutter em widgets menores?',
      'respostas': [
        {
          'texto': 'a) Usar apenas um widget para todo o aplicativo',
          'pontuação': 0
        },
        {
          'texto':
              'b) Dividir o aplicativo em widgets menores baseados em funções e responsabilidades',
          'pontuação': 10
        },
        {
          'texto': 'c) Criar uma única classe com todos os widgets',
          'pontuação': 0
        },
        {
          'texto':
              'd) Usar widgets predefinidos do Flutter sem criar widgets personalizados',
          'pontuação': 0
        },
      ],
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  /*  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // muda a cor de fundo do app
        backgroundColor: Colors.white,
        appBar: AppBar(
          // adiciona cor no appBar
          backgroundColor: const Color.fromARGB(163, 154, 0, 193),
          //sombreamento ou elevação do appBar
          elevation: 10,
          title: const Center(
            child: Text('Perguntas'),
          ),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  } */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // muda a cor de fundo do app
        backgroundColor: Colors.white,
        appBar: AppBar(
          // adiciona cor no appBar
          backgroundColor: const Color.fromARGB(163, 154, 0, 193),
          //sombreamento ou elevação do appBar
          elevation: 0,
          title: const Center(
            child: Text('Perguntas'),
          ),
        ),
        //propriedade Stack para posicionar elementos uns sobre os outros
        body: Stack(
          children: [
            //propriedade Positioned para definir as dimensões e a posição do Container.
            Positioned(
              //mexe no espaçamento entre o container e o appBar
              top: 0,
              //mexe no espaçamento entre o container e a margem do app à esquerda
              left: 0,
              //mexe no espaçamento entre o container e a margem do app à direita
              right: 0,
              bottom: MediaQuery.of(context).size.height / 2,
              child: Container(
                decoration: const BoxDecoration(
                  // Cor do container
                  color: Color.fromARGB(163, 154, 0, 193),
                  borderRadius: BorderRadius.only(
                    // Curva na borda inferior esquerda
                    bottomLeft: Radius.circular(300),
                    // Curva na borda inferior direita
                    bottomRight: Radius.circular(0),
                  ),
                ),
              ),
            ),
            temPerguntaSelecionada
                ? Questionario(
                    perguntas: _perguntas,
                    perguntaSelecionada: _perguntaSelecionada,
                    responder: _responder,
                  )
                : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
