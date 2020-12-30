import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: loginform(),
    );
  }
}

class loginform extends StatefulWidget {
  @override
  _loginformState createState() => _loginformState();
}

class _loginformState extends State<loginform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Text(
          'Good Day LoginForm',
        ),
      ),
      body: SafeArea(
        child: Column(

            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Welcome Back',
                    style: TextStyle(
                        fontFamily: 'Langar',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue),
                  ),
                ),
              ),
              SizedBox(height: 10),
              CircleAvatar(
                // backgroundColor: Colors.lightBlue,
                radius: 60.0,
                backgroundImage: AssetImage('images/img.png'),
              ),
              SizedBox(height: 10),
              Text(
                'Good Day',
                style: TextStyle(
                    fontFamily: 'LuckiestGuy',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              Text(
                'Design and Digital Printing',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.orange,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20,
                width: 100,
                child: Divider(
                  color: Colors.teal.shade300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    icon: Icon(Icons.person_pin),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: TextField(
                  // padding: const EdgeInsets.all(16.0),
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    icon: Icon(Icons.lock),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Padding(padding: EdgeInsets.all(40)),
                    Container(
                      width: 120,
                      height: 50,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          // side: BorderSide(color: Colors.red)
                        ),
                        // padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        color: Colors.green[200],
                        onPressed: () {
                          return print('LOGIN');
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              // fontFamily: 'LuckiestGuy',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 120,
                      height: 50,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          // side: BorderSide(color: Colors.red)
                        ),
                        // padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        color: Colors.green[200],
                        onPressed: () {
                          return print('REG');
                        },
                        child: const Text(
                          'Register',
                          style: TextStyle(
                              // fontFamily: 'LuckiestGuy',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}

// Row(
//                 children: [
//                   Padding(padding: EdgeInsets.all(40)),
//                   RaisedButton(
//                     onPressed: () {},
//                     child: const Text('Login', style: TextStyle(fontSize: 20)),
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   RaisedButton(

//                     onPressed: () {},
//                     child:
//                         const Text('Register', style: TextStyle(fontSize: 20)),
//                   ),
//                 ],
//               ),
