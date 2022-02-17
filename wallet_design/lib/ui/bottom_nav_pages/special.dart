import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Special extends StatefulWidget {
  @override
  _SpecialState createState() => _SpecialState();
}

class _SpecialState extends State<Special> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(20.0),

      )),
    );
  }
}
