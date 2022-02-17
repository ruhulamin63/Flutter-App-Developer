import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
                child: Scaffold(
                  backgroundColor: Color(0xffE9ECF4),
                  body: SafeArea(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 380.h,
                            width: 400.h,
                            decoration: BoxDecoration(
                              color: Color(0xffD797FC),
                              borderRadius: BorderRadius.circular(20.h),
                            ),
                            child:  Center(child: Image.asset('assets/images/Logo.png',height: 200.h,)),
                          ),
                        ),
                        SizedBox(height: 40.h,),
                        Text('Discover your',style: TextStyle(fontSize: 26.sp,fontWeight: FontWeight.bold)),
                        Text('Dream job Here',style: TextStyle(fontSize: 26.sp,fontWeight: FontWeight.bold)),
                        SizedBox(height: 20.h,),
                        const Text('Explore all the most exiting jobs roles',
                            style: TextStyle(color: Colors.grey)),
                        SizedBox(height: 4.h,),
                        const Text('based on your interest And study major',
                            style: TextStyle(color: Colors.grey)),
                        SizedBox(height: 40.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40.h,
                              width: 130.h,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: GestureDetector(
                                onTap: (){},
                                child: const Center(child: Text('Register')),
                              ),
                            ),
                            SizedBox(width: 5.h,),
                            Container(
                              height: 40.h,
                              width: 120.h,
                              decoration: BoxDecoration(
                                  color: Color(0xffE9ECF4),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  border: Border.all(color: Colors.white,width: 1)
                              ),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=>const LoginScreen())
                                  );
                                },
                                child: const Center(child: Text('Sign In')),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
    );

  }
}
