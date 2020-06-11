
import 'package:flutter/material.dart';



class CustomButton extends StatefulWidget {
  String title;

  CustomButton({String title}){
    this.title = title;
  }

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: InkWell(
          // splashColor: Colors.lightGreenAccent,

          onTap: (){
            print('Card tapped');
          },

          child: Container(
            width: 325,
            height: 50,
            color: Colors.grey[300],

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,

              children: <Widget>[
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    // color: Colors.black,
                  )
                )
              ],
            ),



          ),
        ),
      ),
    );
  }
}