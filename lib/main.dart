import 'package:flutter/material.dart';
// import 'package:test_flutter1/pages/latih.dart';
import 'package:test_flutter1/pages/fotoPage.dart';

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
        body: const Center (
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BiggerText(text: "fufu"),
              ]
            ),
        )
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
        ),
        TextButton( 
          child: const Text("Alert Pop up"),
          onPressed: () {
            setState(() {
              showAlertDialog(context);
            });
          }
        ),
        const SizedBox(height: 20.0,),
        ElevatedButton(
          child: const Text(
            'Next',
            style: TextStyle(
              color: Colors.black
            ),
          ),
          onPressed: (){
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Latih()));
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const FotoPage();
            }));
          }, 
        )
      ],
    );
  }
}

showAlertDialog(BuildContext context){
  Widget cancelButton = TextButton(
    onPressed: () {
      Navigator.pop(context);
    }, 
    child: const Text("Cancel")
  );

  Widget approveButton = TextButton(
    onPressed: () {
      Navigator.pop(context);
    },
    child: const Text("Oke")
  );

  AlertDialog alert = AlertDialog(
    title: const Text("Announcement"),
    content: const Text("Button 'Perbesar' for make text bigger and button 'Reset' for make text back to first size"),
    actions: [
      cancelButton,
      approveButton,
    ],
  );

  showDialog(
    context: context, 
    builder: (BuildContext context) {
      return alert;
    }
  );
}