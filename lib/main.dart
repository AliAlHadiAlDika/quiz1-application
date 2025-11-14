import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const randomquote());
}

// ignore: camel_case_types
class randomquote extends StatefulWidget {
  const randomquote({super.key});

  @override
  State<randomquote> createState() => _randomquoteState();
}

// ignore: camel_case_types
class _randomquoteState extends State<randomquote> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 198, 210, 216),
        body: Column(
          children: [
            Text(
              'Random Quote Generator',
              style: TextStyle(
                color: Color.fromARGB(255, 17, 12, 12),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            Text(
              quote,
              style: TextStyle(
                color: Color.fromARGB(255, 75, 73, 204),
                fontSize: 20,
              ),
            ),
            Row(
              children: [
                Text("New Quote:"),
                SizedBox(width: 25),
                Text("Reset"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  int number = Random().nextInt(2) + 1;
  String quote = "Tap 'New Quote' to get motivated!";
  String image = "❓";

  void generatequote() {
    switch (number) {
      case 1:
        quote = "You can do it!";
        image = "✈";
        break;

      case 2:
        quote = "Keep Going!";
        image = "😊";
        break;

      case 3:
        quote = "Beelieve in your self!";
        image = "💥";
        break;

        Default:
        quote;
        image;
    }
  }

  void reset() {
    int number = Random().nextInt(2) + 1;
  String quote = "Tap 'New Quote' to get motivated!";
  String image = "❓";
  }
}
