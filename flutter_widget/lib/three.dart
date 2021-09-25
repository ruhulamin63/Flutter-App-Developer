import 'package:flutter/material.dart';

class three extends StatelessWidget {
  const three({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Three Page"),
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
