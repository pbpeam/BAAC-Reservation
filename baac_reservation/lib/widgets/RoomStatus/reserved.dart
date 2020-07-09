import 'package:flutter/material.dart';

class Reserved extends StatefulWidget {
  Reserved({Key key}) : super(key: key);

  @override
  _ReservedState createState() => _ReservedState();
}

class _ReservedState extends State<Reserved> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,

      child: Container(
      width: 75,
      height: 25,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            Text('Reserved'),
          ],
        ),
      )
    );
  }
}