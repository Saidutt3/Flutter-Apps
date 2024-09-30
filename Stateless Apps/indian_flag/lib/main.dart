import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 550,
                color: Colors.black,
              ),
              Column(
                children: [
                  const Padding(padding: EdgeInsets.fromLTRB(0, 110, 0, 0)),
                  Container(
                    width: 250,
                    height: 35,
                    color: Colors.orange,
                  ),
                  Container(
                    width: 250,
                    height: 35,
                    color: Colors.white,
                    child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/300px-Ashoka_Chakra.svg.png"),
                  ),
                  Container(
                    width: 250,
                    height: 35,
                    color: Colors.green,
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(-50, 375, 0, 0)),
                  Container(
                    width: 250,
                    height: 35,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
