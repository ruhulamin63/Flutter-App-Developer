import 'package:flutter/material.dart';
import 'package:test_app/two.dart';
import 'package:test_app/three.dart';

class one extends StatelessWidget {
  const one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.camera),),
            Tab(icon: Icon(Icons.message),),
          ]),
          ),

          body: const TabBarView(
            children: [
              two(),
              three()
            ],
          ),
        ),
      ),
    );
  }
}
