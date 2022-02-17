import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2d3436),

      appBar: AppBar(
        title: Text('Home'),
       centerTitle: true,
      ),

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: const [
            CircleAvatar(
             backgroundImage: AssetImage('images/diamond.png'),
              radius: 50,

            ),
            Text(
              'Ruhul Amin',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
                fontFamily: 'Pacifico'
              ),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
                fontFamily: 'SourceSansPro',
                letterSpacing: 4
              ),
            ),
            SizedBox(
              height: 20,width: 250,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
             // margin: EdgeInsets.all(10),
              //margin: EdgeInsets.only(right: 10),
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: ListTile(
                leading: Icon(Icons.message,color: Colors.teal,),
                title: Text(
                  'Hello Everyone',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
            Card(
             // margin: EdgeInsets.all(10),
              //margin: EdgeInsets.only(right: 10),
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: ListTile(
                leading: Icon(Icons.mail,color: Colors.teal,),
                title: Text(
                  'raridoy@gmail.com',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

