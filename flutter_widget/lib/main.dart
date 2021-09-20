import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Home Page Test"),
              centerTitle: true,
              leading: const Icon(Icons.message),
              actions: [
                IconButton(icon: const Icon(Icons.add_a_photo), onPressed: () {})
              ],
            ),
            body: const Text(
              "This is my first app",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
