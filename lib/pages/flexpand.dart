import 'package:flutter/material.dart';

class Flexpand extends StatelessWidget {
  const Flexpand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        title: const Text(
          "Inputerrrr",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body:Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
            )
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.red,
            )
          ),
          Expanded(
            child: Container(
              color: Colors.green,
            )
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.yellow,
            )
          ),
        ],
      )
    );
  }
}