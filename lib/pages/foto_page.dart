import 'package:flutter/material.dart';

class FotoPage extends StatelessWidget {
  const FotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/nyimaks.png', width: 200,),
            const Text(
              'Minyak Curah dijual tidak murah', 
              style: TextStyle(
                fontFamily: 'BebasNeue'
              ),
            )
          ],
        ) 
        //Image.network('https://images.pexels.com/photos/28290901/pexels-photo-28290901/free-photo-of-buho-de-anteojos.jpeg', width: 200,),
        
      )
    );
  }
}