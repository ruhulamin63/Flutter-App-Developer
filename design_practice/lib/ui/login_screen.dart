import 'package:design_practice/ui/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import '../const/AppColors.dart';
import '../widgets/customButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

  /// Show a simple "___ Button Pressed" indicator
  void _showButtonPressDialog(BuildContext context, String provider) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$provider Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: const Duration(milliseconds: 400),
    ));
  }

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),

      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: ScreenUtil().screenWidth,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(28.r),
                  //   topRight: Radius.circular(28.r),
                  // ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                           "Hello Again!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 44.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Wellcome back you have been missed!',
                          style: TextStyle(
                            fontSize: 30.sp,
                            color: Color(0xFFBBBBBB),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 48.h,
                              width: 41.w,
                              decoration: BoxDecoration(
                                  color: AppColors.deep_orange,
                                  borderRadius: BorderRadius.circular(12.r)),
                              child: Center(
                                child: Icon(
                                  Icons.email_outlined,
                                  color: Colors.white,
                                  size: 20.w,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: TextField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                  hintText: "xyz@gmail.com",
                                  hintStyle: TextStyle(
                                    fontSize: 14.sp,
                                    color: Color(0xFF414041),
                                  ),
                                  labelText: 'Email',
                                  labelStyle: TextStyle(
                                    fontSize: 15.sp,
                                    color: AppColors.deep_orange,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 48.h,
                              width: 41.w,
                              decoration: BoxDecoration(
                                  color: AppColors.deep_orange,
                                  borderRadius: BorderRadius.circular(12.r)),
                              child: Center(
                                child: Icon(
                                  Icons.lock_outline,
                                  color: Colors.white,
                                  size: 20.w,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: TextField(
                                controller: _passwordController,
                                obscureText: _obscureText,
                                decoration: InputDecoration(
                                  hintText: "password must be 6 character",
                                  hintStyle: TextStyle(
                                    fontSize: 14.sp,
                                    color: Color(0xFF414041),
                                  ),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                    fontSize: 15.sp,
                                    color: AppColors.deep_orange,
                                  ),
                                  suffixIcon: _obscureText == true
                                      ? IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _obscureText = false;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.remove_red_eye,
                                        size: 20.w,
                                      ))
                                      : IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _obscureText = true;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.visibility_off,
                                        size: 20.w,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'Recovery Password',
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        // elevated button
                        customButton("Sign In", (){
                          // signIn();
                        },),
                        SizedBox(
                          height: 20.h,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            '-- Or Continue With --',
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        // SizedBox(
                        //   height: 15.h,
                        // ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SignInButton(
                              Buttons.Facebook,
                              mini: true,
                              onPressed: () {},
                            ),
                            SignInButtonBuilder(
                              icon: Icons.app_blocking,
                              text: "Ignored for mini button",
                              mini: true,
                              onPressed: () {
                                _showButtonPressDialog(context, 'Apple (mini)');
                              },
                              backgroundColor: Colors.cyan,
                            ),
                            SignInButtonBuilder(
                              icon: Icons.facebook,
                              text: "Ignored for mini button",
                              mini: true,
                              onPressed: () {
                                _showButtonPressDialog(context, 'Facebook (mini)');
                              },
                              backgroundColor: Colors.blue,
                            ),
                          ],
                        ),
                        Divider(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Divider(),
                            SignInButton(
                              Buttons.Twitter,
                              text: "Use Twitter",
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16
                                  )),
                              onPressed: () {
                                // _showButtonPressDialog(context, 'Twitter');
                              },
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Wrap(
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFBBBBBB),
                              ),
                            ),
                            GestureDetector(
                              child: Text(
                                " Register Now",
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.deep_orange,
                                ),
                              ),
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     CupertinoPageRoute(
                                //         builder: (context) =>
                                //             RegistrationScreen()));
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
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
    );
  }
}
