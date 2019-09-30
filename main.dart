// first app project in flutter

import 'package:flutter/material.dart';
import 'dart:math';

void main()
{
  runApp(new MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChangerAuto();
  }
}
class ChangerAuto extends State<MyApp> {
  List<Color> randomColors =[
    Colors.red,
    Colors.blueAccent,
    Colors.green,
    Colors.deepOrangeAccent,
    Colors.pinkAccent,
    Colors.orange,
    Colors.yellow,
    Colors.deepPurple
  ];
  int index=0;
  Color colorRightNow = Colors.green;
  void changeColor(){
    setState(() {
      index = Random().nextInt(randomColors.length);
      colorRightNow = randomColors[index];
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: FlatButton(onPressed: changeColor, child:
          Text("Change Color!!",style: TextStyle(fontSize: 24.0,color: Colors.white
          ),), ),
        ),
        backgroundColor: colorRightNow,
      ),
    );
  }
}
