import 'package:flutter/material.dart';
import 'package:primeiro_projeto_alura/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.add_task),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: const Duration(milliseconds: 800),
          child: ListView(children: const [
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Task('Aprender Flutter', 'assets/images/dash.png', 3),
            ),
            Task('Andar de bike', 'assets/images/bike.jpg', 2),
            Task('Ler', 'assets/images/ler.jpg', 2),
            Task('Meditar', 'assets/images/meditar.jpeg', 5),
            Task('Jogar', 'assets/images/jogar.jpg', 1),
            SizedBox(
              height: 100,
            )
          ])),
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
