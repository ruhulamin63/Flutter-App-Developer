import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Reward extends StatelessWidget {
  const Reward({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () =>
          MaterialApp(
            //... other code
            debugShowCheckedModeBanner: false,
            builder: (context, widget) {
              //add this line
              ScreenUtil.setContext(context);
              return MediaQuery(
                //Setting font does not change with system font size
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: Column(
                  children: [
                    Expanded(child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context,index){
                          return GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Card(
                                elevation: 0,
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset('assets/images/Logo.png',height: 30.h,),
                                          SizedBox(width: 10.h,),
                                          Column(
                                            children: [
                                              Text("Daily Reward",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              SizedBox(height: 5.h,),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color:  Color(0xffF6E9C8),
                                                    borderRadius: BorderRadius.circular(30)
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(2),
                                                  child: Row(
                                                    children: [
                                                      Image.asset('assets/images/Logo.png',height: 10.h,),
                                                      Text("+50",style: TextStyle(color: Colors.black))
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: const Padding(
                                            padding: EdgeInsets.all(10),
                                            child:Text('Claim',style: TextStyle(color: Colors.white,fontSize: 18),)
                                        ),
                                      )

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        })),

                  ],
                ),
              );
            },
          ),
    );
  }
}
