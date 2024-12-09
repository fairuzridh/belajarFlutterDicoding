import 'package:flutter/material.dart';

var descTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DesainScreen extends StatelessWidget {
  const DesainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/farm-house.jpg'),

            //title page
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                "Bojso Beach & Snow park",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32.0,
                  fontFamily: 'Bebas Neue'
                ),
                ),
            ),

            //Icon row 
            Container(
              margin: const EdgeInsets.symmetric(vertical: 24.0),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Icon(Icons.attach_money),
                      const SizedBox(height: 8.0,), //Jarak icon & text
                      Text("Open Everyday", style: descTextStyle,)
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.attach_money),
                      const SizedBox(height: 8.0,),
                      Text("09.00 AM", style: descTextStyle,)
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.attach_money),
                      const SizedBox(height: 8.0,),
                      Text("Cheapest", style: descTextStyle,)
                    ],
                  )
                ],
              ),
            ),

            //Description paragraph
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                "Bojongsoang is now a densely populated sub-district With the plan to build a new city of Tegalluar and a high-speed train in Indonesia in the village of Tegalluar located at the eastern end of Bojongsoang district, it is certain that the development of Bojongsoang in the future will be more rapid even though the negative impact is the reduction of vacant land and rice fields as well as the rate of urbanization that may be uncontrollable.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Oxygen',
                  fontSize: 12.0
                ),
              ),
            ),

            //Slider Image 
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      child: Image.network('https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      child: Image.network('https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      child: Image.network('https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
                    )
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}