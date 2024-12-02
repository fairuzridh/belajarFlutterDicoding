import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const DesainScreen(),
    );
  }
}

class DesainScreen extends StatelessWidget {
  const DesainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                "Bojso Beach & Snow park",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold
                ),
                ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 24.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8.0,), //Jarak icon & text
                      Text("Open Everyday", style: TextStyle(fontSize: 12.0),)
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.hourglass_bottom),
                      SizedBox(height: 8.0,),
                      Text("09.00 AM", style: TextStyle(fontSize: 12.0),)
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(height: 8.0,),
                      Text("Cheapest", style: TextStyle(fontSize: 12.0),)
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                "Bojongsoang is now a densely populated sub-district and is quite developing rapidly considering its strategic position and its distance is quite close to the city of Bandung. With the plan to build a new city of Tegalluar and a high-speed train in Indonesia in the village of Tegalluar located at the eastern end of Bojongsoang district, it is certain that the development of Bojongsoang in the future will be more rapid even though the negative impact is the reduction of vacant land and rice fields as well as the rate of urbanization that may be uncontrollable",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16.0),
              ),
            )
          ],
        ),
      )
    );
  }
}