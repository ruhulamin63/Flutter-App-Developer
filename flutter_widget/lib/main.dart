import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final pages = [
      Container(color: Colors.amber,),
      Container(color: Colors.blue,),
      Container(color: Colors.black),
      Container(color: Colors.amber,),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LiquidSwipe(
          pages: pages,
        ),
      )
    );
  }
}
