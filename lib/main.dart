import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Heading(text: "Hello World"), //text in title use HEADING()
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
              )
          ],
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {}
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BiggerText(text: "fufu"),
          ]
        ),
        // floatingActionButton: FloatingActionButton(
        //   child: const Icon(Icons.add),
        //   onPressed: () {}
        // ),
      ),
    );
  }
}

//StatelessWidget for make HEADING()
class Heading extends StatelessWidget {
  final String text;
  const Heading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
    );
  }
}


//StatefulWidget for make BiggerText()
class BiggerText extends StatefulWidget {
  final String text;
  const BiggerText({super.key, required this.text});  // const BiggerText({Key? key, required this.text}) : super(key: key);

  @override
  State<BiggerText> createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text, 
          style: TextStyle(fontSize: _textSize)
        ),
        ElevatedButton(
          child: const Text("Perbesar"),
          onPressed: () {
            setState(() {
              _textSize += 8.0;
            });
          }
        ),
        ElevatedButton(
          child: const Text("Reset"),
          onPressed: () {
            setState(() {
              _textSize = 16.0;
            });
          }
        )
      ],
    );
  }
}