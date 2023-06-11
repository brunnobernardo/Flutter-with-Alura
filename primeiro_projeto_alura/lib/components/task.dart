import 'package:flutter/material.dart';
import 'package:primeiro_projeto_alura/components/difficulty.dart';

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;

  const Task(this.nome, this.foto, this.dificuldade, {Key? key})
      : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int level = 0;
  int mastery = 0;

  void levelUp() {
    setState(() {
      if (widget.dificuldade == 1 && level <= 10 ||
          widget.dificuldade == 2 && level <= 20 ||
          widget.dificuldade == 3 && level <= 30 ||
          widget.dificuldade == 4 && level <= 40 ||
          widget.dificuldade == 5 && level <= 50) {
        level++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: (funcMasteryDifficulty(widget.dificuldade, level) == 1
                      ? Colors.red
                      : Colors.blue)),
              height: 140,
            ),
            Difficulty(dificultyLevel: widget.dificuldade),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    height: 100,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black12,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                widget.foto,
                                width: 72,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 200,
                                  child: Text(
                                    widget.nome,
                                    style: const TextStyle(
                                      fontSize: 24,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ]),
                          SizedBox(
                            height: 52,
                            width: 52,
                            child: ElevatedButton(
                              onPressed: levelUp,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Icon(Icons.arrow_drop_up),
                                  Text(
                                    'UP',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: SizedBox(
                              width: 200,
                              child: LinearProgressIndicator(
                                  color: Colors.white,
                                  value: (widget.dificuldade > 0)
                                      ? (level / widget.dificuldade) / 10
                                      : 1)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Nivel: $level',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ])
                ])
          ],
        ));
  }
}
