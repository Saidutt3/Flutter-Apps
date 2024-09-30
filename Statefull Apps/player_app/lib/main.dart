import 'package:flutter/material.dart';

void main() {
  runApp(const PlayerApp());
}

class PlayerApp extends StatefulWidget {
  const PlayerApp({super.key});

  @override
  State<PlayerApp> createState() => _PlayerAppState();
}

class _PlayerAppState extends State<PlayerApp> {
  int counter = 0;
  List<String> playerList = <String>[
    "https://upload.wikimedia.org/wikipedia/commons/1/1e/Prime_Minister_Of_Bharat_Shri_Narendra_Damodardas_Modi_with_Shri_Rohit_Gurunath_Sharma_%28Cropped%29.jpg",
    "https://dicdn.bigfuck.tv/sQtW6jIvZ6H33WLqZRY3Exp7P6g9OPfZLvy31jKTi7Q/rs:fill:360:506/crop:0:0.90:no/enlarge:1/wm:1:nowe:0:0:1/wmu:aHR0cHM6Ly9jZG42OTY5NjE2NC5haGFjZG4ubWUvcG9ybnN0YXJfYXZhdGFyX3dhdGVybWFyay5wbmc=/aHR0cHM6Ly9pY2RuMDUuYmlnZnVjay50di9wb3Juc3Rhci83MDQvZTRlMDUyMWYyZDY2ZjMzMjk1MTNmZjM3ZDM2MTNiM2YuanBn.webp",
    "https://content.vrbangers.com/uploads/2021/09/6141b523e2daa461988423.jpg",
    "https://thelordofporn.com/wp-content/uploads/2014/10/Sunny-Leone-Pornstar.png",
    "https://www.hollywoodreporter.com/wp-content/uploads/2012/08/jism-2_sunny_leone_fnl.jpg?w=1440&h=810&crop=1"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Players",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Players App"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                playerList[counter],
                height: 300,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (counter < playerList.length - 1) {
              counter++;
            } else {
              counter = 0;
            }
            setState(() {});
          },
          tooltip: "Increment",
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
