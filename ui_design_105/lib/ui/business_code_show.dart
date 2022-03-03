import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Business_Code_Show extends StatefulWidget {
  const Business_Code_Show({Key? key}) : super(key: key);

  @override
  State<Business_Code_Show> createState() => _Business_Code_ShowState();
}

class _Business_Code_ShowState extends State<Business_Code_Show> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFFF1EFE9),

      appBar: AppBar(
        backgroundColor: Color(0xffF6E9C8),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Business Code',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              width: 30.h,
            ),
            Text(
              "556464666",
              style: TextStyle(
                color: Color(0xFFBBBBBB),
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              width: 15.h,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(10)
                ),
            ),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.logout_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/Logo.png',
                                      height: 50.h,
                                    ),
                                    SizedBox(
                                      width: 10.h,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Jonh Smith",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.sp,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          "54654646",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.sp,
                                              color:Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  // decoration: BoxDecoration(
                                  //     borderRadius:
                                  //     BorderRadius.circular(30),
                                  //     border: Border.all(
                                  //         color: Colors.red)),
                                  child: Padding(
                                      padding:
                                      const EdgeInsets.all(8),
                                      child: Icon(
                                        Icons.bookmark_add_outlined,
                                        //color: Colors.red,
                                      )),
                                )
                              ],
                            ),
                            Divider(
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    );
                  })
            ),
          ],
        ),
      ),
    );
  }
}
