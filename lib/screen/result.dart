import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bmicalculator/constants/app_colors.dart';
import 'package:bmicalculator/brain.dart';
import 'package:flutter/services.dart';
import 'package:flutter_share_me/flutter_share_me.dart';

void main() => runApp(ResultScreen());
class ResultScreen extends StatefulWidget {
  final int height;
  final int weight;
  final int age;
  final String shortMessage;
  final String guideLines;
  final String bodyIndex;
final String myEmo;
  ResultScreen({Key key,this.height,this.myEmo,this.weight,this.age,this.shortMessage, this.guideLines,this.bodyIndex, bool value,}): super(key: key);




  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  IndexCalculator index = IndexCalculator();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
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
            IconButton(
              icon: Icon(Icons.share,color: Colors.black,),
              tooltip: "Save Todo and Retrun to List",
              onPressed: () {
                String msg='${widget.bodyIndex},${widget.shortMessage},${widget.guideLines}%';
                FlutterShareMe()
                    .shareToSystem( msg: msg);
              },
            )

          ],

        backgroundColor: MyColor.backgroundColor,
      ),
      body: Center(

        child: Card(
          elevation: 10.0,
          margin: EdgeInsets.all(30.0),


          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Image(image: AssetImage(widget.myEmo)),

                ),

                Container(

                  child: Text(widget.bodyIndex,
                      style: TextStyle(
                        color: MyColor.textColor,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                      )),
                  padding: EdgeInsets.all(10.0),
                ),
                Container(
                  child: Text(
                    widget.shortMessage,
                    style: TextStyle(
                        color: MyColor.textColor2,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        ),
                  ),
                  padding: EdgeInsets.all(10.0),
                ),


                Container(
                  child: Text(
                    widget.guideLines,
                    style: TextStyle(
                        color: MyColor.textColor,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,


                    ),
                    textAlign: TextAlign.center,
                  ),
                  padding: EdgeInsets.all(10.0),
                ),
                RaisedButton(
                  child: Text('Calculate Again',style: TextStyle(color: Colors.white),),
                  padding: EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)
                  ),

                  color: MyColor.buttonColor,
                  onPressed: () {
                    Navigator.pop(context);

                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
