import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void tekanTombol() {
    setState(() {
      if (number == 5) {
        number = 0;
      }
      number = number + 1;
    });
  }

  void addTenNumber() {
    setState(() {
      number = number + 5;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(fontSize: 120),
              ),
              ElevatedButton(
                child: Text("+ 1"),
                onPressed: tekanTombol,
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
              ElevatedButton(
                child: Text("+ 5"),
                onPressed: addTenNumber,
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
              ElevatedButton(
                onPressed: resetNumber,
                child: Text('Reset'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
