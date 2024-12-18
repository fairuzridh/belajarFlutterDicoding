import 'package:flutter/material.dart';
import 'package:test_flutter1/main_screen.dart';
import 'package:test_flutter1/model/tourism_place.dart';

var descTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.place});
  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Image.network(place.imageCover),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white54,
                          child: IconButton( 
                            icon: const Icon(Icons.arrow_back), 
                            onPressed: () {
                              Navigator.pop(context);
                            }
                          ),
                        ),
                        const FavoriteButton()
                      ],
                    ),
                  )
                )
              ]
            ),

            //title page
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const  TextStyle(
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
                      const Icon(Icons.calendar_today),
                      const SizedBox(height: 8.0,), //Jarak icon & text
                      Text(
                      place.openDay, 
                      style: descTextStyle,
                    )
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.monetization_on),
                      const SizedBox(height: 8.0,),
                      Text(
                        place.ticketPrice, 
                        style: descTextStyle,
                      )
                    ],
                  ),
                  // Column(
                  //   children: [
                  //     const Icon(Icons.attach_money),
                  //     const SizedBox(height: 8.0,),
                  //     Text("Cheapest", style: descTextStyle,)
                  //   ],
                  // ),
                ],
              ),
            ),

            //Description paragraph
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                place.desc,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),

            //Slider Image 
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: place.imageSpot.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      child: Image.network(url),
                    )
                  );
                }).toList(),
              ),
            )
          ],
        ),
      )
    );
  }
}