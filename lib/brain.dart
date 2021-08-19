import 'dart:math';

import 'package:bmicalculator/constants/app_images.dart';

class IndexCalculator {
  final int height;
  final int weight;
  final int age;
  bool male;
  bool value;
  double bodyIndex = 0;

  IndexCalculator({this.height, this.weight, this.age,this.male,this.value});

  String indexCalculator() {
    if(value==male ){
    bodyIndex = weight / pow(height / 100, 2);
    print(bodyIndex.toStringAsFixed(2));
   }
    else {
      bodyIndex =weight / pow(height / 100, 2);
      print(bodyIndex.toStringAsFixed(2));

    }
    return bodyIndex.toStringAsFixed(2);

  }
  String myEmo() {
    String myEmo;
    if (bodyIndex <= 18.5) {
      myEmo= MyImages.underweight;
    }
    else if (bodyIndex > 18.5 && bodyIndex < 24.9) {
      myEmo = MyImages.normal;
    }
    else if (bodyIndex >= 24.9 && bodyIndex < 29.9) {
      myEmo = MyImages.overweight;
    }
    else if (bodyIndex >= 30.0) {
      myEmo = MyImages.obesity;
    }
    return myEmo;
  }
  String shortMessage() {
    String shortMessage;
    if (bodyIndex <= 18.5) {
      shortMessage = 'UNDERWEIGHT';
    } else if (bodyIndex > 18.5 && bodyIndex < 24.9) {
      shortMessage = 'NORMAL';
    } else if (bodyIndex >= 24.9 && bodyIndex < 29.9) {
      shortMessage = 'OVERWEIGHT';
    } else if (bodyIndex >= 30.0) {
      shortMessage = 'OBESITY';
    }
    return shortMessage;
  }

  String guideLines() {
    String guideLines;
    if (bodyIndex < 18.5) {
      guideLines =
          'Ohh! Your body weight is less than normal. Try to eat more and live a healthy life.';
    } else if (bodyIndex > 18.5 && bodyIndex < 20.9) {
      guideLines = 'WOW! You have a perfect weight. Let\'s maintain this.';
    } else if (bodyIndex > 18.5 && bodyIndex < 24.9) {
      guideLines =
          'Nice! Your body weight is  normal.  Maintain a Your Regular diet.';
    } else if (bodyIndex > 24.9 && bodyIndex < 29.9) {
      guideLines =
          'Ahh! You Are Not fit dear. Try to exercise more and maintain a healthy diet. ';
    } else if (bodyIndex >= 30.0) {
      guideLines =
          'Ohh No! You have much more weight than that of a normal person. Consult a doctor immediately!!';
    }
    return guideLines;
  }
}
