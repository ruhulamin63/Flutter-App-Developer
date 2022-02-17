import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;

  final FocusNode _emailNode = FocusNode();
  final FocusNode _passNode = FocusNode();
  final _loginFormKey = GlobalKey<FormState>();

  void _submitOnLogin(){
    final isValid = _loginFormKey.currentState!.validate();
    print('IsValid $isValid');
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
      ScreenUtilInit(
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
                  child:  Scaffold(
                    backgroundColor: Color(0xffE9ECF4),
                    body: SingleChildScrollView(
                      child: SafeArea(
                        child: Column(
                          children: [
                            Form(
                                key: _loginFormKey,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 50.h,),
                                      Text('Hello Again',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold)),
                                      SizedBox(height: 15.h,),
                                      Text("Welcome back you've",style: TextStyle(fontSize: 16.sp,)),
                                      Text('been missed',style: TextStyle(fontSize: 16.sp,)),
                                      SizedBox(height: 30.h,),
                                      TextFormField(
                                        controller: _emailController,
                                        keyboardType: TextInputType.emailAddress,
                                        validator: (value){
                                          if(value!.isEmpty){
                                            return 'Please Enter Valid User Name';
                                          }else{
                                            return null;
                                          }
                                        },
                                        focusNode: _emailNode,
                                        textInputAction: TextInputAction.next,
                                        onEditingComplete: () => FocusScope.of(context).requestFocus(_passNode),
                                        decoration: InputDecoration(
                                            fillColor: Colors.white,
                                            filled: true,
                                            labelText: 'Enter username',
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
                                      SizedBox(height: 10.h,),
                                      TextFormField(
                                        controller: _passwordController,
                                        obscureText: _obscureText,
                                        keyboardType: TextInputType.number,
                                        validator: (value){
                                          if(value!.isEmpty || value.length < 5){
                                            return 'Please Enter Valid Password';
                                          }else{
                                            return null;
                                          }
                                        },
                                        focusNode: _passNode,
                                        textInputAction: TextInputAction.next,
                                        onEditingComplete: _submitOnLogin,
                                        decoration: InputDecoration(
                                            fillColor: Colors.white,
                                            filled: true,
                                            labelText: 'Password',
                                            suffixIcon: GestureDetector(
                                              onTap: (){
                                                setState(() {
                                                  _obscureText = !_obscureText;
                                                });
                                              },
                                              child: Icon(
                                                _obscureText ? Icons.visibility:Icons.visibility_off,
                                                color:_obscureText ? Colors.black:Colors.red,
                                              ),
                                            ),
                                            enabledBorder:OutlineInputBorder(
                                              borderSide: const BorderSide(color: Colors.white),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(color: Colors.red,width: 5),
                                              borderRadius: BorderRadius.circular(10),
                                            )
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 230),
                                        child: TextButton(onPressed: (){
                                          // Navigator.push(context,
                                          //     MaterialPageRoute(builder: (context)=>ForgotPass())
                                          // );
                                        }, child: const Text('Recovery Password',style: TextStyle(color: Colors.black45,),)),
                                      ),
                                      SizedBox(height: 15.h,),
                                      MaterialButton(onPressed: (){
                                        //singIn();
                                        _submitOnLogin();
                                        // Navigator.push(context,
                                        //     MaterialPageRoute(builder: (context)=>Dashboard())
                                        // );
                                      },
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        minWidth: 300.h,
                                        height: 50,
                                        color: Colors.red.shade300,
                                        child: Text(
                                          'Sing In',style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.sp,
                                            color: Colors.white
                                        ),
                                        ),
                                      ),
                                      SizedBox(height: 50.h,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(height: 1.h,width: 40.h,color: Colors.black,),
                                          SizedBox(width: 10.h,),
                                          Text('Or continue with',style: TextStyle()),
                                          SizedBox(width: 10.h,),
                                          Container(height: 1.h,width: 40.h,color: Colors.black,),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(50),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                                height: 40.h,
                                                width: 60.h,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffE9ECF4),
                                                    borderRadius: BorderRadius.circular(10),
                                                    border: Border.all(color: Colors.white,width: 2)
                                                ),
                                                child: IconButton(
                                                  onPressed: (){},
                                                  icon: Icon( FontAwesomeIcons.google,color: Colors.red,),
                                                )
                                            ),
                                            Container(
                                                height: 40.h,
                                                width: 60.h,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffE9ECF4),
                                                    borderRadius: BorderRadius.circular(10),
                                                    border: Border.all(color: Colors.white,width: 2)
                                                ),
                                                child: IconButton(
                                                  onPressed: (){},
                                                  icon: Icon( FontAwesomeIcons.apple,color: Colors.black,),
                                                )
                                            ),
                                            Container(
                                                height: 40.h,
                                                width: 60.h,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffE9ECF4),
                                                    borderRadius: BorderRadius.circular(10),
                                                    border: Border.all(color: Colors.white,width: 2)
                                                ),
                                                child: IconButton(
                                                  onPressed: (){},
                                                  icon: Icon( FontAwesomeIcons.facebook,color: Colors.blue,),
                                                )
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Text('Not a member ?'),
                                          TextButton(onPressed: (){}, child: const Text('Register now'))
                                        ],
                                      )

                                    ],
                                  ),
                                ))
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
