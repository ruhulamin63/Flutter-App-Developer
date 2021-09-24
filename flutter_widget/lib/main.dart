import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widget/page1.dart';
import 'package:flutter_widget/page2.dart';
import 'package:flutter_widget/page3.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'package:flutter_widget/second.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),);
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 50,

          child: GestureDetector(
            child: const Hero(
              tag: "Add",

              child: Icon(
                Icons.add_a_photo,
                size: 50,
              ),
            ),

            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => second()));
            },
          ),
        ),
      ),
    );
  }
}


