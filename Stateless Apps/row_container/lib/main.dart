import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.orange,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.orange,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
