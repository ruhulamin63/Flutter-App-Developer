import 'package:flutter/material.dart';

class one extends StatelessWidget {
  const one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("One Page"),
          centerTitle: true,
          leading: const Icon(Icons.message),
          actions: [
            IconButton(icon: const Icon(Icons.add_a_photo), onPressed: () {})
          ],
        ),

      ),
    );
  }
}
