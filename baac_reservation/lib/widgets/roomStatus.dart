import 'package:flutter/material.dart';

class RoomStatus extends StatefulWidget {
  RoomStatus({Key key}) : super(key: key);

  @override
  _RoomStatusState createState() => _RoomStatusState();
}

class _RoomStatusState extends State<RoomStatus> {
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