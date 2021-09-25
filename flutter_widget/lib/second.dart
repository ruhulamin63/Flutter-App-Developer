import 'package:flutter/material.dart';

class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SafeArea(
        child: Scaffold(

          appBar: AppBar(
            title: const Text("Second Page"),
            centerTitle: true,
            leading: const Icon(Icons.message),
            actions: [
              IconButton(icon: const Icon(Icons.add_a_photo), onPressed: () {})
            ],
          ),

          body: const Center(
            child: Hero(
              tag: "add",

              child: Icon(
                Icons.message,
                size: 50,
                color: Colors.green,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
