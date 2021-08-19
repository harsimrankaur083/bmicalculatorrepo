import 'package:bmicalculator/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:bmicalculator/screen/input.dart';

void main() => runApp(SplashScreen());

class SplashScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, openNextPage);
  }

  void openNextPage() {
    Route route = MaterialPageRoute(builder: (context) => ScreenOne());
    Navigator.pushReplacement(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage("images/bmi.png"),
             radius: 60.0,
              backgroundColor: MyColor.backgroundColor,
            ),
            Container(
              child: Text('BMI CALCULATOR',style: TextStyle(fontSize: 30.0),),
            ),
          ],
        ),
      ),
    );
  }
}
