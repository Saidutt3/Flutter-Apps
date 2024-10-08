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
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text(
              "Netflix Demo",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.w500, color: Colors.red),
            ),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: ListView.builder(
            itemCount: 10,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Action Movies",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 300,
                            width: 200,
                            child: Image.network(
                                "https://images-cdn.ubuy.co.in/634fa5a3884d9347417c7d33-movie-poster-action-fantasy-movie-shadow.jpg"),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 300,
                            width: 200,
                            child: Image.network(
                                "https://images-cdn.ubuy.co.in/634fa5a3884d9347417c7d33-movie-poster-action-fantasy-movie-shadow.jpg"),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 300,
                            width: 200,
                            child: Image.network(
                                "https://images-cdn.ubuy.co.in/634fa5a3884d9347417c7d33-movie-poster-action-fantasy-movie-shadow.jpg"),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 300,
                            width: 200,
                            child: Image.network(
                                "https://images-cdn.ubuy.co.in/634fa5a3884d9347417c7d33-movie-poster-action-fantasy-movie-shadow.jpg"),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 300,
                            width: 200,
                            child: Image.network(
                                "https://images-cdn.ubuy.co.in/634fa5a3884d9347417c7d33-movie-poster-action-fantasy-movie-shadow.jpg"),
                          ),
                        ],
                      ))
                ],
              );
            },
          )),
    );
  }
}
