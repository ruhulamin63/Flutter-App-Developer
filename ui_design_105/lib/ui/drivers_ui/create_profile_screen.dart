import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/AppColors.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({Key? key}) : super(key: key);

  @override
  _CreateProfileScreenState createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Form(
                            // key: _loginFormKey,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    SizedBox(height: 40.h,),
                                    Text('Create Profile',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(height: 20.h,),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: TextFormField(
                                        controller: _nameController,
                                        keyboardType: TextInputType.name,
                                        validator: (value){
                                          if(value!.isEmpty){
                                            return 'Please Enter Valid Name';
                                          }else{
                                            return null;
                                          }
                                        },
                                        textInputAction: TextInputAction.next,
                                        decoration: InputDecoration(
                                            labelText: 'Enter Full Name',
                                            hintText: 'John Smith',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey),
                                              borderRadius: BorderRadius.circular(10),

                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.red),
                                              borderRadius: BorderRadius.circular(10),
                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5.h,),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: TextFormField(
                                        controller: _codeController,
                                        keyboardType: TextInputType.number,
                                        validator: (value){
                                          if(value!.isEmpty){
                                            return 'Please Enter Valid Code';
                                          }else{
                                            return null;
                                          }
                                        },
                                        textInputAction: TextInputAction.next,
                                        decoration: InputDecoration(
                                            labelText: 'Enter Vanders Code',
                                            hintText: '545460',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.red),
                                              borderRadius: BorderRadius.circular(10),
                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5.h,),
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
                                        'SAVE',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.sp,
                                          color: Colors.white
                                      ),
                                      ),
                                    ),
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
