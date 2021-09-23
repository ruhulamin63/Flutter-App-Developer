import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var ScreenHeight = MediaQuery.of(context).size.height / 3;
    var ScreenWidth = MediaQuery.of(context).size.width /3 ;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              Container(
                height: ScreenHeight,
                width: ScreenWidth,
                color: Colors.amber,
              ),
              Container(
                height: ScreenHeight,
                width: ScreenWidth,
                color: Colors.amber,
              ),
              Container(
                height: ScreenHeight,
                width: ScreenWidth,
                color: Colors.amber,
              ),
              Container(
                height: ScreenHeight,
                width: ScreenWidth,
                color: Colors.amber,
              )
            ],
          ),
        ),
      )
    );
  }
}
