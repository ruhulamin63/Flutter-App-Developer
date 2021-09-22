import 'package:flutter/material.dart';

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

    var screenHeight = MediaQuery.of(context).size.height / 3; // Every screen show almost same
    var screenWidth = MediaQuery.of(context).size.width / 3;

    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Home Page"),
            centerTitle: true,
            leading: const Icon(Icons.message),
            actions: [
              IconButton(icon: const Icon(Icons.add_a_photo), onPressed: () {})
            ],
          ),

        floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add),),

        body: Center(
          child: Stack(

            clipBehavior: Clip.none,
            alignment: Alignment.center,

            children: [
              Container(
                height: screenHeight,
                width: screenWidth,
                color: Colors.amber,
              ),
              const Positioned(
                  bottom: -50,
                  child: CircleAvatar(radius: 50,)
              )
            ],
          )
        ),
      ),
    );
  }
}
