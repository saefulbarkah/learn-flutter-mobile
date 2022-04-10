import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello world"),
        ),
        body: Center(
          child: Container(
            color: Color.fromARGB(255, 43, 43, 43),
            width: 300,
            height: 50,
            child: Text(
              "Halo kamu lagi ngapain heheheheheh, semoga kamu ya kamu baik ya adsasd",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
