import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_widget/one.dart';
import 'package:flutter_widget/second.dart';
import 'package:flutter_widget/two.dart';
import 'package:flutter_widget/three.dart';
import 'package:flutter_widget/four.dart';

import 'package:liquid_swipe/liquid_swipe.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _currentindex = 0;
  final pages = [
    const one(),
    const two(),
    const three(),
    const four()
  ];

  @override
  Widget build(BuildContext context) {
    var screenHeight =
        MediaQuery.of(context).size.height / 3; // Every screen show almost same
    var screenWidth = MediaQuery.of(context).size.width / 3;

    return SafeArea(
      child: Scaffold(
        //
        // appBar: AppBar(
        //   title: const Text("Home Page Test"),
        //   centerTitle: true,
        //   leading: const Icon(Icons.message),
        //   actions: [
        //     IconButton(icon: const Icon(Icons.add_a_photo), onPressed: () {})
        //   ],
        // ),

        bottomNavigationBar: BottomNavigationBar(
          
          currentIndex: _currentindex,

          items: const [
            BottomNavigationBarItem(

              backgroundColor: Colors.red,
              icon: Icon(Icons.message),
              title: Text("Message"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              title: Text("call"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pan_tool),
              title: Text("pan tool"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.radio),
              title: Text("radio"),
            ),
          ],

          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
        ),

        body: pages[_currentindex]

        // body: Center(
        //   child: CircleAvatar(
        //     radius: 50,
        //     child: GestureDetector(
        //       child: const Hero(
        //         tag: "Add",
        //         child: Icon(
        //           Icons.add_a_photo,
        //           size: 50,
        //         ),
        //       ),
        //       onTap: () {
        //         Navigator.push(context,
        //             MaterialPageRoute(builder: (context) => const second()));
        //       },
        //     ),
        //   ),
        // ),

      ),
    );
  }
}
