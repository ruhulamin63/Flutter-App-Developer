import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
                  backgroundColor: Colors.teal.shade100,
                  appBar: AppBar(
                    title: Text('Dashboard'),
                  ),
                  drawer: SafeArea(
                    child: Drawer(
                      child:  ListView(
                        children: [
                          DrawerHeader(child: Column(
                            children: [
                              SizedBox(height: 25.h,),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Menu',style: TextStyle(fontSize: 18.sp,color: Colors.white),),
                                  ))
                            ],
                          )),
                          _listTitle(label: 'Home', fct: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));}, icon: Icons.home_outlined),
                          Divider(),
                          _listTitle(label: 'Update Profile', fct: (){}, icon: Icons.person_add_alt_1),
                          Divider(),
                          _listTitle(label: 'Contact us', fct: (){}, icon: Icons.contact_page_outlined),
                          Divider(),
                          _listTitle(label: 'Setting', fct: (){}, icon: Icons.settings),
                          Divider(),
                          _listTitle(label: 'Log Out', fct: (){}, icon: Icons.logout),

                        ],
                      ),
                    ),
                  ),
                  body: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          _textButton(fct: (){}, lebel: 'ENG',color: Colors.blue),
                          Container(height: 15,width: 2,color: Colors.blue,),
                          _textButton(fct: (){}, lebel: 'বাংলা',color: Colors.grey),
                        ],
                      ),
                      SizedBox(height: 40.h,),
                      Image.asset('assets/images/Logo.png',height: 80.h,),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10),
                        child: TextButton(onPressed: (){},child: Text('Open Account',style: TextStyle(color: Colors.blue)),),
                      ),
                      Expanded(
                        child: GridView.builder(
                            padding: EdgeInsets.only(left: 15,right: 15),
                            scrollDirection: Axis.vertical,
                            itemCount: 9,
                            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 1,
                                mainAxisSpacing: 5
                            ), itemBuilder: (_,index){
                          return GestureDetector(
                            onTap: (){
                              // Navigator.push(context,
                              //   MaterialPageRoute(builder: (context)=>ShowPage(_details[index]["poet-name"], _details[index]["poet-details"])));
                            },
                            child: Card(
                              color: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              elevation: 3,
                              child: Column(
                                children: [
                                  Icon(Icons.person,size: 80,color: Colors.white,),
                                  Text('Profile',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _textButton(fct: (){}, lebel: 'Products',color: Colors.blue),
                          Container(height: 15,width: 2,color: Colors.blue,),
                          _textButton(fct: (){}, lebel: 'Location',color: Colors.blue),
                          Container(height: 15,width: 2,color: Colors.blue,),
                          _textButton(fct: (){}, lebel: 'Contacts',color: Colors.blue),
                          Container(height: 15,width: 2,color: Colors.blue,),
                          _textButton(fct: (){}, lebel: 'Info',color: Colors.blue),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
    );
  }
}

_textButton({required Function fct,required String lebel,required Color color}){
  return TextButton(onPressed: (){
    fct();
  }, child: Text(lebel,style: TextStyle(color: color,fontWeight: FontWeight.bold),));
}
Widget _listTitle ({required String label,required Function fct,required IconData icon}){
  return ListTile(
    onTap: (){
      fct ();
    },
    leading: Icon(icon,color: Colors.red,),
    title: Text(
      label,style: TextStyle(
        fontSize: 20.sp,
        fontStyle: FontStyle.italic,color: Colors.cyan
    ),
    ),
  );
}
