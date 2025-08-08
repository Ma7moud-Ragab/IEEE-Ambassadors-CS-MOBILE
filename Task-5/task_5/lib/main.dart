import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Task-5",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  border: Border.all(color: Colors.black),
                ),
                child: const Text(
                  "Mohamed Wael Mahdi",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              const SizedBox(height: 5),

              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  border: Border.all(color: Colors.black),
                ),
                child: const Text(
                  "Life is like riding a bicycle. To keep your balance, you must keep moving.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(height: 5),

              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.star, color: Colors.amber),
                    const Icon(Icons.star, color: Colors.amber),
                    const Icon(Icons.star, color: Colors.amber),
                    const Icon(Icons.star, color: Colors.amber),
                    const Icon(Icons.star, color: Colors.amber),
                    const SizedBox(width: 10),
                    const Text("0 Reviews"),
                  ],
                ),
              ),
              const SizedBox(height: 5),

              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Icon(Icons.accessibility, color: Colors.green),
                        Text("PREP:"),
                        Text("25 min"),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.access_time, color: Colors.green),
                        Text("cooks:"),
                        Text("1 hr"),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.restaurant, color: Colors.green),
                        Text("FEEDS:"),
                        Text("4-6"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
