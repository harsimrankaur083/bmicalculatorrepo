import 'package:bmicalculator/screen/result.dart';
import 'package:flutter/material.dart';
import 'package:bmicalculator/screen/input.dart';
import 'package:bmicalculator/screen/splashscreen.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: true,
  home: MyApp(),
  // initialRoute: '/',
));
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: <String, WidgetBuilder>{
        '/': (context) => SplashScreen(),
        '/one': (context) => ScreenOne(),
        '/two': (context) => ResultScreen(),

      },
    );
  }
}
