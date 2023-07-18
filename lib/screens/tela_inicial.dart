import 'package:projetos_flutter/components/tasks.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter: Primeiros Passos'),
        leading: const Icon(Icons.add_task),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 500),
        child: Container(
          color: const Color.fromARGB(255, 208, 221, 237),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Tasks('Estudar Flutter', 'assets/images/dash.png', 3),
                    ),
                    Tasks('Andar de Bike', 'assets/images/bike.webp', 2),
                    Tasks('Ler 50 páginas', 'assets/images/livro.jpg', 1),
                    Tasks('Meditar', 'assets/images/meditar.jpeg', 4),
                    Tasks('Jogar', 'assets/images/jogar.jpg', 0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        backgroundColor: Colors.blue[100],
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}