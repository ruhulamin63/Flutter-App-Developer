import 'package:flutter/material.dart';

class three extends StatelessWidget {
  const three({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text("Hello page no three"),
        ),
      ),
    );
  }
}
