import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Calculate(),
  ));
}

class Calculate extends StatefulWidget {
  const Calculate({super.key});

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: (Scaffold(
        body: Container(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(),
              )
            ],
          ),
        ),
      )),
    );
  }
}
