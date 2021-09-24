import 'package:flutter/material.dart';

class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: "add",

          child: Icon(
            Icons.message,
            size: 50,
          ),
        ),
      ),
    );
  }
}
