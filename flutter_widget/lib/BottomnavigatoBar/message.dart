import 'package:flutter/material.dart';

class message extends StatelessWidget {
  const message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: message_field(),
    );
  }
}

class message_field extends StatefulWidget {
  const message_field({Key? key}) : super(key: key);

  @override
  _message_fieldState createState() => _message_fieldState();
}

class _message_fieldState extends State<message_field> {
  @override
  Widget build(BuildContext context) {
    var screenHeight =
        MediaQuery.of(context).size.height / 3; // Every screen show almost same
    var screenWidth = MediaQuery.of(context).size.width / 3;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Messages"),
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),

            child: Column(
              children:  [
                const Text("Sign Up"),
                const Image(
                  image: NetworkImage('https://cdn.pixabay.com/photo/2021/04/04/05/43/animal-6149183_960_720.jpg'),
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      hintText: 'Full Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                RaisedButton(
                  onPressed: () {},
                  child: Text('Submit'),
                  color: Colors.red,
                  elevation: 10,

                ),
              ],
            ),

          ),

        ),
      ),
    );
  }
}

