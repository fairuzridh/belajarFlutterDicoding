import 'package:flutter/material.dart';

class Latih extends StatefulWidget {
  const Latih({super.key});

  @override
  State<Latih> createState() => _LatihState();
}

class _LatihState extends State<Latih> {
  TextEditingController cityName = TextEditingController();
  bool statusPeople = false;

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
      body: Padding(
        padding: const EdgeInsets.only(left: 50.0, right: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: cityName,
              decoration: const InputDecoration(
                labelText: 'Nama Kota',
                hintText: 'Ex : Jakarta'
              ),
            ),
            const SizedBox(height: 20.0,),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [ 
                Switch(
                  value: statusPeople, 
                  onChanged: (bool value){
                    setState(() {
                      statusPeople = value;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(statusPeople ? 'Native People' : 'Tourist People'),
                        duration: const Duration(milliseconds: 800),
                      )
                    );
                  }
                ),
                // const SizedBox(width: 10.0),
                Text(statusPeople ? 'NATIVE' : 'TOURIST', style:const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                )),
            //   ]
            // ),
            const SizedBox(height: 20.0,),
            ElevatedButton(
              child: const Text('Submit'),
              onPressed: (){
                showDialog(
                  context: context, 
                  builder: (context){
                    return AlertDialog(
                      content: Text('Welcome to ${cityName.text}, ${statusPeople ? 'Native' : ''}'),
                    ); //
                  }
                );
              },
            )
          ],
        ),
      )
    );
  }

  @override
  void dispose() {
    cityName.dispose();
    super.dispose();
  }
}