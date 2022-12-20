import 'package:floating_bubbles/floating_bubbles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home,color: Colors.white,),
            Icon(Icons.notifications,color: Colors.white),
            Icon(Icons.settings,color: Colors.white),
            Icon(Icons.people,color: Colors.white),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Floating Bubbles Effect",style: TextStyle(fontSize: 15),),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.black,
            ),
          ),
          Positioned.fill(
            child: FloatingBubbles.alwaysRepeating(
              noOfBubbles: 50,
              colorsOfBubbles: const [
                Colors.red,
                Colors.green,
                Colors.blue,
                Colors.yellow,
                Colors.brown,
                Colors.blueGrey
              ],
              sizeFactor: 0.2,
              opacity: 40,
              speed: BubbleSpeed.slow,
              paintingStyle: PaintingStyle.fill,
              shape: BubbleShape.circle, //This is the default
            ),
          ),
        ],
      ),
    );
  }
}