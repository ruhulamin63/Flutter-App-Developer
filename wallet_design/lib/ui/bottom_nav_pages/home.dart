import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: TextFormField(
                    readOnly: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          borderSide: BorderSide(color: Colors.blue)),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          borderSide: BorderSide(color: Colors.grey)),
                      hintText: "Search products here",
                      hintStyle: TextStyle(fontSize: 15.sp),
                    ),
                    // onTap: () => Navigator.push(context,
                    //     CupertinoPageRoute(builder: (_) => SearchScreen())),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
