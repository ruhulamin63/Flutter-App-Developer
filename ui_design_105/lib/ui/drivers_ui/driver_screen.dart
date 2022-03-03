import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_design_105/ui/business_code_show.dart';
import 'package:ui_design_105/ui/drivers_ui/verify_screen.dart';
import '../../const/AppColors.dart';

class Driver_screen extends StatefulWidget {
  const Driver_screen({Key? key}) : super(key: key);

  @override
  _Driver_screenState createState() => _Driver_screenState();
}

class _Driver_screenState extends State<Driver_screen> {

  int checkedIndex = 0;

  List cardNames = [
    'Driver',
    'Verdor',
  ];

  TextEditingController _phoneController = TextEditingController();
  bool _obscureText = false;
  bool _obscure = false;

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
                  child:  Scaffold(
                    backgroundColor: Color(0xffE9ECF4),

                    body:  SingleChildScrollView(
                      child: Column(
                        children: [
                          //Form(
                          // key: _loginFormKey,
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                SizedBox(height: 50.h,),
                                Text('Logo',
                                    style:
                                    TextStyle(
                                        fontSize: 44.sp,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                SizedBox(height: 15.h,),
                                Text("Signup As",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                    )
                                ),
                                SizedBox(height: 20.h,),


                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                      child: Card(
                                        elevation: 10,
                                        color: _obscureText ? Colors.green : Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            side: BorderSide(color: Colors.grey)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(30),
                                          child: Column(
                                            children: [
                                              Icon(
                                                Icons.person,
                                                size: 40.sp,
                                                color: _obscureText
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                              Text(
                                                'Driver',
                                                style: TextStyle(
                                                    fontSize: 20.sp,
                                                    color: _obscureText
                                                        ? Colors.white
                                                        : Colors.black),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),

                                    SizedBox(width: 30.w,),

                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _obscure = !_obscure;
                                        });
                                      },
                                      child: Card(
                                        elevation: 10,
                                        color: _obscure ? Colors.green : Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            side: BorderSide(color: Colors.grey)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(30),
                                          child: Column(
                                            children: [
                                              Icon(
                                                Icons.person,
                                                size: 40.sp,
                                                color: _obscure
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                              Text(
                                                'Vendor',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: _obscure
                                                        ? Colors.white
                                                        : Colors.black),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // Expanded(
                                //   child: GridView.builder(
                                //       padding: EdgeInsets.only(left: 15,right: 15),
                                //       scrollDirection: Axis.vertical,
                                //       itemCount: 2,
                                //       gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                                //           crossAxisCount: 2,
                                //           childAspectRatio: 1,
                                //           mainAxisSpacing: 5
                                //       ), itemBuilder: (_,index){
                                //     return GestureDetector(
                                //       onTap: (){
                                //         // Navigator.push(context,
                                //         //   MaterialPageRoute(builder: (context)=>ShowPage(_details[index]["poet-name"], _details[index]["poet-details"])));
                                //       },
                                //       child: Card(
                                //         color: Colors.blue,
                                //         shape: RoundedRectangleBorder(
                                //             borderRadius: BorderRadius.circular(15)
                                //         ),
                                //         elevation: 2,
                                //         child: Column(
                                //           children: [
                                //             Icon(Icons.person,size: 80,color: Colors.white,),
                                //             Text('Profile',style: TextStyle(color: Colors.white),),
                                //           ],
                                //         ),
                                //       ),
                                //     );
                                //   }),
                                // ),
                                SizedBox(height: 20.h,),

                                TextFormField(
                                  // controller: _emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return 'Please Enter Valid Info';
                                    }else{
                                      return null;
                                    }
                                  },
                                  // focusNode: _emailNode,
                                  textInputAction: TextInputAction.next,
                                  //onEditingComplete: () => FocusScope.of(context).requestFocus(_passNode),
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      //labelText: 'Enter username',
                                      hintText: "Enter mobile number",
                                      enabledBorder:OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.red,width: 5),
                                        borderRadius: BorderRadius.circular(10),
                                      )
                                  ),
                                ),

                                SizedBox(height: 30.h,),

                                MaterialButton(onPressed: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=>Business_Code_Show()));
                                }, shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                  minWidth:1.sw,
                                  height: 50.h,
                                  color: AppColors.deep_blue,
                                  child: Text(
                                    'NEXT',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.sp,
                                      color: Colors.white
                                  ),
                                  ),
                                ),
                              ],
                            ),
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

  // Widget buildCard(int index) {
  //   bool checked = index == checkedIndex;
  //   String name = cardNames[index];
  //   return GestureDetector(
  //     onTap: () {
  //       setState(() {
  //         checkedIndex = index;
  //       });
  //     },
  //     child: Stack(
  //       children: <Widget>[
  //         Padding(
  //           padding: const EdgeInsets.all(12),
  //           child: Card(
  //             color: checked ? Colors.green : Colors.white,
  //             shape: RoundedRectangleBorder(
  //               borderRadius: BorderRadius.circular(12),
  //             ),
  //             child: Container(
  //               child: Center(child: Text(name)),
  //             ),
  //           ),
  //         ),
  //         // Positioned(
  //         //   top: 12,
  //         //   right: 12,
  //         //   child: Offstage(
  //         //     offstage: !checked,
  //         //     child: Container(
  //         //       decoration: BoxDecoration(
  //         //           color: Colors.white,
  //         //           border: Border.all(width: 2),
  //         //           shape: BoxShape.circle),
  //         //       child: Icon(
  //         //         Icons.check,
  //         //         color: Colors.green,
  //         //       ),
  //         //     ),
  //         //   ),
  //         // ),
  //       ],
  //     ),
  //   );
  // }
}



