import 'package:flutter/material.dart';
class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({@required this.onPressed,@required this.myText});

  final Function  onPressed;
  final Text myText;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,

      child:myText,
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(

        width: 40.0,
        height: 40.0,


      ),
      shape: CircleBorder(),
      fillColor: Colors.blue,
    );
  }
}