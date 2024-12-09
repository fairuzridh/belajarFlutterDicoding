import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({super.key});
  final List<int> numberList = const <int>[1,2,3,4,5,6,7,8,9];

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
      body: ListView(
        children: numberList.map((number) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              border: Border.all(color: Colors.black)
            ),
            child: Center(
              child: Text(
                '$number',
                style: const TextStyle(fontSize: 50.0),
              ),
            ),
          );
        }).toList(),
      )
    );
  }
}