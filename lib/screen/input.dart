import 'package:bmicalculator/screen/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmicalculator/constants/app_colors.dart';
import 'package:bmicalculator/my_widget/round_icon_button.dart';
import 'package:bmicalculator/brain.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';



void main() => runApp(ScreenOne());

class ScreenOne extends StatefulWidget {

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int age = 18;
  int height = 110;
  int weight = 40;
  bool male = true;
  bool female =false;



  String myEmo ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: MyColor.textColor,
          ),
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
       PopupMenuButton(
         icon: Icon(Icons.more_vert,color: Colors.black,),

         itemBuilder: ((context) => [
           PopupMenuItem(
             child: Text("Share"),

           ),
           PopupMenuItem(
             child: Text("Search"),
           ),
           PopupMenuItem(
             child: Text("About Us"),

           ),
         ]),

       ),

        ],
        backgroundColor: MyColor.backgroundColor,
      ),
      body: SingleChildScrollView(
              child: Card(
                child: Container(
                  width: MediaQuery. of(context). size. width ,

                  height:  MediaQuery.of(context).copyWith().size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(

                            child: Column(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Age',
                                  style: TextStyle(
                                    color: MyColor.textColor,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '$age',
                                  style: TextStyle(
                                    color: MyColor.textColor,
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  width: 70.0,
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 3.0,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    RoundedIconButton(
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      myText: Text(
                                        '+',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 30.0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    RoundedIconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (age > 1) age--;
                                        });
                                      },
                                      myText: Text(
                                        '-',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 30.0),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            width: MediaQuery. of(context). size. width -210,
                            height: 170.0,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: MyColor.backgroundColor,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColor.shadow,
                                  offset: new Offset(0.0, 10.0),
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Weight(kg)',
                                  style: TextStyle(
                                    color: MyColor.textColor,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '$weight',
                                  style: TextStyle(
                                    color: MyColor.textColor,
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  width: 70.0,
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 3.0,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    RoundedIconButton(
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      myText: Text(
                                        '+',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 30.0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    RoundedIconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (weight > 1) weight--;
                                        });
                                      },
                                      myText: Text(
                                        '-',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 30.0),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            width: MediaQuery. of(context). size. width -210,
                            height: 170.0,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: MyColor.backgroundColor,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColor.shadow,
                                  offset: new Offset(0.0, 10.0),
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Height(cm)',
                              style: TextStyle(
                                color: MyColor.textColor,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              height.toString(),
                              style: TextStyle(
                                  fontSize: 40.0, fontWeight: FontWeight.w900),
                            ),
                            Slider(
                                value: height.toDouble(),
                                min: 80,
                                max: 220,
                                activeColor: Colors.blue,
                                onChanged: (double value) {
                                  setState(() {
                                    height = value.round();
                                  });
                                })
                          ],
                        ),
                        width: double.infinity,
                        height: 130.0,
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: MyColor.backgroundColor,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: MyColor.shadow,
                              offset: new Offset(0.0, 10.0),
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Gender',
                              style: TextStyle(
                                color: MyColor.textColor,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,

                              children: <Widget>[
                                LiteRollingSwitch(
                                  //initial value
                                  value: true,
                                  textOn: 'Male',
                                  textOff: 'Female',
                                  colorOn: Colors.blue[700],
                                  colorOff: Colors.pink[300],

                                  textSize: 16.0,
                                  onChanged: (bool male) {
                                    //Use it to manage the different states
                                    print('Current State of SWITCH IS: $male');
                                  },
                                ),
                                Container(

                                    child: Text(
                                  "i'm",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50.0,
                                  ),
                                )),

                                CircleAvatar(
                                  backgroundImage: AssetImage("images/male.png"),
                                  radius: 20.0,
                                  backgroundColor: MyColor.backgroundColor,
                                ),


                                CircleAvatar(
                                 backgroundImage: AssetImage("images/female.png"),
                                 radius: 20.0,
                                 backgroundColor: MyColor.backgroundColor,
                               ),


                              ],
                            ),
                          ],
                        ),
                        width: double.infinity,
                        height: 120.0,
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: MyColor.backgroundColor,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: MyColor.shadow,
                              offset: new Offset(0.0, 10.0),
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Calculate Your Body Mass Index',
                        style: TextStyle(color: MyColor.lineTextColor),
                      ),
                      RaisedButton(
                          shape: CircleBorder(
                            side: BorderSide.none,
                          ),
                          child: Ink.image(
                            image: AssetImage("images/button.png"),
                            width: 50.0,
                            height: 50.0,
                            fit: BoxFit.cover,
                          ),
                          onPressed: () {
                            getInformation();
                          })
                    ],
                  ),
                ),
              ),



      ),
    );
  }

  void getInformation() {
    IndexCalculator index = IndexCalculator(height: height,weight: weight,age: age,value: male);
    String bodyIndex=index.indexCalculator();
    String myEmo=index.myEmo();
    String shortMessage = index.shortMessage();
    String guideLines = index.guideLines();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ResultScreen(
                  guideLines: guideLines,
                  shortMessage: shortMessage,
              bodyIndex:bodyIndex,
                  height: height,
                  weight: weight,
                  age: age,
                 value:male,
              myEmo: myEmo,
                )));

  print(age);
  print(height);
  print(weight);

  }
}
