import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 107, 10, 124),
            leading: Container(
              child: Icon(Icons.account_circle),
            ),
            title: Text('Controle de ponto'),
          ),
          body: ListView(children: [
            imageContainer(),
            countHours('08/05', 'Monday'),
            countHours('09/05', 'Tuesday'),
            countHours('10/05', 'Wednesday'),
            countHours('11/05', 'Thursday'),
            countHours('12/05', 'Friday'),
          ])
          // body
          ),
    );
  }
}

class imageContainer extends StatelessWidget {
  const imageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Container(
          height: 200,
          color: Color.fromARGB(255, 107, 10, 124),
        ));
  }
}

class countHours extends StatefulWidget {
  final String date;
  final String day;
  const countHours(this.date, this.day, {Key? key}) : super(key: key);

  @override
  State<countHours> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<countHours> {
  int hours = 0;
  int workload = 10;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 146, 145, 145),
                  border: Border.all(width: 1.5, color: Colors.black)),
              height: 110,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: AlignmentDirectional.center,
                        width: 100,
                        height: 50,
                        child: Text(
                          widget.date,
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional.center,
                        width: 150,
                        height: 25,
                        child: Text(
                          widget.day,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: AlignmentDirectional.center,
                        width: 155,
                        height: 50,
                        child: Text(
                          'Trabalhado: ${hours}h',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional.center,
                        width: 150,
                        height: 25,
                        child: Text(
                          'Saldo: ${hours - workload}h ',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(width: 2.0, color: Colors.black)),
                          height: 30,
                          width: 55,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(255, 107, 10, 124))),
                              onPressed: () {
                                setState(() {
                                  hours++;
                                });
                                print(hours);
                              },
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '+',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ])),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(width: 2.0, color: Colors.black)),
                          height: 30,
                          width: 55,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(255, 107, 10, 124))),
                              onPressed: () {
                                setState(() {
                                  hours--;
                                });
                                print(hours);
                              },
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '-',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ])),
                        )
                      ])
                ],
              ),
            ),
          ],
        ));
  }
}
