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
          title: Text('Flutter: Primeiros Passos'),
        ),
        body: mainContainer(),// body
      ),
    );
  }
}

class mainContainer extends StatefulWidget {
  const mainContainer ({Key? key}) : super(key: key);

  @override
  State<mainContainer> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<mainContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child:
    Stack(
      children: [
        Container(
          height: 80,
          color: Colors.grey,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: ,
            )
          ],
        )
      ],
    ));
  }
}
