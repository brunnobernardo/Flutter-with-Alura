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
            leading: Container(
              child: Icon(Icons.account_circle),
            ),
            title: Text('Controle de ponto'),
          ),
          body: ListView(children: [
            mainContainer('08/05', 'Monday'),
            mainContainer('09/05', 'Tuesday'),
            mainContainer('10/05', 'Wednesday'),
            mainContainer('11/05', 'Thursday'),
            mainContainer('12/05', 'Friday')
          ])
          // body
          ),
    );
  }
}

class mainContainer extends StatefulWidget {
  final String date;
  final String day;
  const mainContainer(this.date, this.day, {Key? key}) : super(key: key);

  @override
  State<mainContainer> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<mainContainer> {
  int hours = 0;
  int workload = 10;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Stack(
          children: [
            Container(
              height: 100,
              color: Colors.grey,
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
                          'Trabalhando: ${hours}h',
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
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Container(
                          height: 30,
                          child: ElevatedButton(
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
                          height: 30,
                          child: ElevatedButton(
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
                      ]))
                ],
              ),
            ),
          ],
        ));
  }
}
