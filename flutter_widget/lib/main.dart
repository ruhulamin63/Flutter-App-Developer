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
            title: const Text("Home Page"),
            centerTitle: true,
            leading: const Icon(Icons.message),
            actions: [
              IconButton(icon: const Icon(Icons.add_a_photo), onPressed: () {})
            ],
          ),


          body: ListView(
            children: [

              Column(
                children: [
                  Container(
                    height: 200,
                    width: 150,
                    color: Colors.amber,
                  ),

                  const SizedBox(height: 10,),

                  Container(
                    height: 200,
                    width: 150,
                    color: Colors.blueAccent,
                  ),

                  const SizedBox(height: 10,),

                  Container(
                    height: 200,
                    width: 150,
                    color: Colors.blueAccent,
                  )
                ],

              ),
              
            ],
          ),
        )
      ),
    );
  }
}
