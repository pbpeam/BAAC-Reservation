import 'package:flutter/material.dart';

class FreeRoom extends StatefulWidget {
  FreeRoom({Key key}) : super(key: key);

  @override
  _FreeRoomState createState() => _FreeRoomState();
}

class _FreeRoomState extends State<FreeRoom> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,

      child: Container(
      width: 75,
      height: 25,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            Text('Ready'),
          ],
        ),
      )
    );
  }
}