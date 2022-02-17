import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/AppColors.dart';
import '../widgets/customButton.dart';
import 'login_screen.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In Page'),
        centerTitle: true,
      ),

      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child: Column(
            children: [
              SizedBox(
                height: 400.h,
                width: ScreenUtil().screenWidth,
                // child: Padding(
                // padding: EdgeInsets.only(left: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          child:  Hero(
                            tag: "customWidget",
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(32),
                              child: Image.asset(
                                "assets/images/download.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          width: ScreenUtil().screenWidth,
                          // decoration: BoxDecoration(
                          //   color: Colors.white,
                          //   borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(28.r),
                          //     topRight: Radius.circular(28.r),
                          //     bottomLeft: Radius.circular(28.r),
                          //     bottomRight: Radius.circular(28.r),
                          //   ),
                          // ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
                width: ScreenUtil().screenWidth,
              ),
              Text(
                'Discover Your Dream Job Here',

                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 44.sp),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.h,
                width: ScreenUtil().screenWidth,
              ),
              Text(
                'Explore all the most exiting jobs roles based on your interest And study major',

                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(

                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(5.w),
                      child: Expanded(
                        child: RaisedButton(
                          onPressed: () {},
                          child: const Text("Register"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.w),
                      child: Expanded(
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) =>
                                        LoginScreen()));
                          },
                          child: const Text("Sign In"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              // ),
              // Expanded(
              //   child: Container(
              //     width: ScreenUtil().screenWidth,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(28.r),
              //         topRight: Radius.circular(28.r),
              //       ),
              //     ),
              //     child: Padding(
              //       padding: EdgeInsets.all(20.w),
              //       child: SingleChildScrollView(
              //         scrollDirection: Axis.vertical,
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             SizedBox(
              //               height: 20.h,
              //             ),
              //             Text(
              //               "Welcome Back",
              //               style: TextStyle(
              //                   fontSize: 22.sp, color: AppColors.deep_orange),
              //             ),
              //             Text(
              //               "Glad to see you back my buddy.",
              //               style: TextStyle(
              //                 fontSize: 14.sp,
              //                 color: Color(0xFFBBBBBB),
              //               ),
              //             ),
              //             SizedBox(
              //               height: 15.h,
              //             ),
              //             Row(
              //               children: [
              //                 Container(
              //                   height: 48.h,
              //                   width: 41.w,
              //                   decoration: BoxDecoration(
              //                       color: AppColors.deep_orange,
              //                       borderRadius: BorderRadius.circular(12.r)),
              //                   child: Center(
              //                     child: Icon(
              //                       Icons.email_outlined,
              //                       color: Colors.white,
              //                       size: 20.w,
              //                     ),
              //                   ),
              //                 ),
              //                 SizedBox(
              //                   width: 10.w,
              //                 ),
              //                 Expanded(
              //                   child: TextField(
              //                     controller: _emailController,
              //                     decoration: InputDecoration(
              //                       hintText: "thed9954@gmail.com",
              //                       hintStyle: TextStyle(
              //                         fontSize: 14.sp,
              //                         color: Color(0xFF414041),
              //                       ),
              //                       labelText: 'EMAIL',
              //                       labelStyle: TextStyle(
              //                         fontSize: 15.sp,
              //                         color: AppColors.deep_orange,
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 10.h,
              //             ),
              //             Row(
              //               children: [
              //                 Container(
              //                   height: 48.h,
              //                   width: 41.w,
              //                   decoration: BoxDecoration(
              //                       color: AppColors.deep_orange,
              //                       borderRadius: BorderRadius.circular(12.r)),
              //                   child: Center(
              //                     child: Icon(
              //                       Icons.lock_outline,
              //                       color: Colors.white,
              //                       size: 20.w,
              //                     ),
              //                   ),
              //                 ),
              //                 SizedBox(
              //                   width: 10.w,
              //                 ),
              //                 Expanded(
              //                   child: TextField(
              //                     controller: _passwordController,
              //                     obscureText: _obscureText,
              //                     decoration: InputDecoration(
              //                       hintText: "password must be 6 character",
              //                       hintStyle: TextStyle(
              //                         fontSize: 14.sp,
              //                         color: Color(0xFF414041),
              //                       ),
              //                       labelText: 'PASSWORD',
              //                       labelStyle: TextStyle(
              //                         fontSize: 15.sp,
              //                         color: AppColors.deep_orange,
              //                       ),
              //                       suffixIcon: _obscureText == true
              //                           ? IconButton(
              //                               onPressed: () {
              //                                 setState(() {
              //                                   _obscureText = false;
              //                                 });
              //                               },
              //                               icon: Icon(
              //                                 Icons.remove_red_eye,
              //                                 size: 20.w,
              //                               ))
              //                           : IconButton(
              //                               onPressed: () {
              //                                 setState(() {
              //                                   _obscureText = true;
              //                                 });
              //                               },
              //                               icon: Icon(
              //                                 Icons.visibility_off,
              //                                 size: 20.w,
              //                               )),
              //                     ),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //
              //             SizedBox(
              //               height: 50.h,
              //             ),
              //             // elevated button
              //             customButton(
              //               "Sign In",
              //               () {
              //                 // signIn();
              //               },
              //             ),
              //             SizedBox(
              //               height: 20.h,
              //             ),
              //             Wrap(
              //               children: [
              //                 Text(
              //                   "Don't have an account?",
              //                   style: TextStyle(
              //                     fontSize: 13.sp,
              //                     fontWeight: FontWeight.w600,
              //                     color: Color(0xFFBBBBBB),
              //                   ),
              //                 ),
              //                 GestureDetector(
              //                   child: Text(
              //                     " Sign Up",
              //                     style: TextStyle(
              //                       fontSize: 13.sp,
              //                       fontWeight: FontWeight.w600,
              //                       color: AppColors.deep_orange,
              //                     ),
              //                   ),
              //                   // onTap: () {
              //                   //   Navigator.push(
              //                   //       context,
              //                   //       CupertinoPageRoute(
              //                   //           builder: (context) =>
              //                   //               RegistrationScreen()));
              //                   // },
              //                 )
              //               ],
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
