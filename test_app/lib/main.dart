import 'package:flutter/material.dart';

import 'package:test_app/one.dart';

void main() => runApp(const Apps());

class Apps extends StatelessWidget {
  const Apps({Key? key}) : super(key: key);

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

  var _currentIndex = 0;

  final pages = [
    const one()
    // const two(),
    // const three(),
    // const four(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Home", style: TextStyle(color:Colors.amber),),
        //   centerTitle: true,
        //   leading: Icon(Icons.ac_unit_rounded),
        // ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,

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
            )
          ],

          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),

        body: pages[_currentIndex]

      ),
    );
  }
}

