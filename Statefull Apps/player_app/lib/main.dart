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
    "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRN_YLneDIMiLFQizeNOh3Y9bQs4a5nzAoD24ROXw-6zVQ7UZ-l",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQicAasVI4psEAPfyTVihYOTd6yJIra5HvNUqaWkBUDBnjiG3f",
    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSLSfRTce6vQU6s83HUOgd7b6PCuWUAW0SSgHcxVP97N2H7iV3j"
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
