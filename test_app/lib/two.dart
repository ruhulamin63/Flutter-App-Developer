import 'package:flutter/material.dart';

class two extends StatelessWidget {
  const two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text("Hello page no two"),
        ),
      ),
    );
  }
}
