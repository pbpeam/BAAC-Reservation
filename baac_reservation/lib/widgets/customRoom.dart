import 'package:baac_reservation/widgets/roomStatus.dart';
import 'package:flutter/material.dart';

class CustomRoom extends StatefulWidget {
  CustomRoom({Key key}) : super(key: key);

  @override
  _CustomRoomState createState() => _CustomRoomState();
}

class _CustomRoomState extends State<CustomRoom> {
  @override
  Widget build(BuildContext context) {
    return Card(
      // padding: EdgeInsets.all(5),
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),

      child: Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        width: 100,
        height: 50,

        // color: Colors.amber,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: <Widget>[
            Text('Room Number'),
            RoomStatus(),
          ],
        ),
      ),
      
    );
  }
}