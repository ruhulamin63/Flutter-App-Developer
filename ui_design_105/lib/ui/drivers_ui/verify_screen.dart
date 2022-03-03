import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:ui_design_105/ui/drivers_ui/create_profile_screen.dart';

import '../../const/AppColors.dart';


class Verify_Screen extends StatefulWidget {
  const Verify_Screen({Key? key}) : super(key: key);

  @override
  State<Verify_Screen> createState() => _Verify_ScreenState();
}

class _Verify_ScreenState extends State<Verify_Screen> {
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () =>
          MaterialApp(
            debugShowCheckedModeBanner: false,
            //... other code
            builder: (context, widget) {
              //add this line
              ScreenUtil.setContext(context);
              return MediaQuery(
                //Setting font does not change with system font size
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: SafeArea(
                  child: Scaffold(
                    backgroundColor: Color(0xffE9ECF4),

                    body: SingleChildScrollView(
                      child: Column(
                        children: [
                          Form(
                            // key: _loginFormKey,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    SizedBox(height: 80.h,),
                                    Center(child: Text('Verify OTP',style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                    ),)),
                                    SizedBox(height: 20.h,),
                                    Text('Enter 5 Digits Code',style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey
                                    ),),
                                    SizedBox(height: 10.h,),
                                    Text('Enter the 5 digits code that you received',style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey
                                    ),),
                                    Text('on your mobile number',style: TextStyle(
                                        fontSize: 15.sp,
                                        color: Colors.grey
                                    ),),
                                    SizedBox(height: 20.h,),
                                    OTPTextField(
                                      length: 5,
                                      width: MediaQuery.of(context).size.width,
                                      fieldWidth: 55.w,
                                      style: TextStyle(
                                          fontSize: 15
                                      ),
                                      textFieldAlignment: MainAxisAlignment.spaceAround,
                                      keyboardType: TextInputType.number,
                                      outlineBorderRadius: 10,
                                      fieldStyle: FieldStyle.box,
                                      onCompleted: (pin) {
                                        print("Completed: " + pin);
                                      },
                                    ),
                                    SizedBox(height: 20.h,),

                                    MaterialButton(onPressed: (){
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context)=>CreateProfileScreen()));
                                    }, shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                      minWidth:1.sw,
                                      height: 50.h,
                                      color: AppColors.deep_blue,
                                      child: Text(
                                        'VERIFY',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.sp,
                                          color: Colors.white
                                      ),
                                      ),
                                    ),

                                    SizedBox(height: 20.h,),
                                    TextButton(onPressed: (){},
                                        child: Text(
                                          "Resend OTP",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.black,
                                              decoration: TextDecoration.underline
                                          ),
                                        )
                                    )
                                  ],
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
    );
  }
}

