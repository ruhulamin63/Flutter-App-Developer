import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widget/page1.dart';
import 'package:flutter_widget/page2.dart';
import 'package:flutter_widget/page3.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  final PageController _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          scrollDirection: Axis.vertical,
          controller: _controller,
          children: const [
            page1(),
            page2(),
            page3(),
          ],
        ),
      ),
    );
  }
}
