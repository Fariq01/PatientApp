// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:patient_app/appointmentCobs.dart';
import 'package:patient_app/signup.dart';
import 'package:patient_app/appointment.dart';

void main() {
  runApp(PatientApp());
}

class PatientApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage(),
        '/appointment': (BuildContext context) => new AppointmentPage(),
        '/appointmentCobs': (BuildContext context) => new AppointmentCobsPage()
      },
      home: new MyHomePage(),
    );
  }
}

// class AppointmentApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // return new Scaffold(
//     return new ListTile(onTap: () {
//       Navigator.push(context,
//           new MaterialPageRoute(builder: (context) => new MyHomePage()));
//     });
//     // );
//   }
// }

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 100, left: 30, right: 30),
              child: Stack(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/Blue-01.png'),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 120.0, 0, 0),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'PASSWORD',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      alignment: Alignment(1.0, 0.0),
                      padding: EdgeInsets.only(top: 15.0, left: 20.0),
                      child: InkWell(
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Container(
                      height: 40.0,
                      child: Container(
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Colors.blueAccent,
                          color: Colors.blue,
                          elevation: 7.0,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed('/appointment');
                            },
                            child: Center(
                              child: Text('LOGIN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat')),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //signup - socmed button
                    Container(
                      // Positioned(
                      padding: EdgeInsets.fromLTRB(8.0, 20.0, 5.0, 4.0),
                      child: Column(
                        children: [
                          Text("Or Login with", style: TextStyle(height: 1)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    minimumSize: Size(175, 40),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    shadowColor: Colors.blueAccent,
                                    primary: Colors.white,
                                    backgroundColor: Colors.blueAccent),
                                child: Row(
                                  children: <Widget>[
                                    ImageIcon(AssetImage(
                                        'assets/images/facebook.png')),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("Facebook"),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    minimumSize: Size(175, 40),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    shadowColor: Colors.blueAccent,
                                    primary: Colors.white,
                                    backgroundColor: Colors.redAccent),
                                child: Row(
                                  children: <Widget>[
                                    ImageIcon(
                                      AssetImage(
                                          'assets/images/google-icon.png'),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("Google"),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Not have an account yet?',
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
                SizedBox(width: 5.0),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/signup');
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
