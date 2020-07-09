import 'package:flutter/material.dart';
import 'package:baac_reservation/widgets/RoomStatus/reserved.dart';

class ReservedRoom extends StatefulWidget {
  ReservedRoom({Key key}) : super(key: key);

  @override
  _ReservedRoomState createState() => _ReservedRoomState();
}

class _ReservedRoomState extends State<ReservedRoom> {
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
            Reserved(),
          ],
        ),
      ),
      
    );
  }
}