
import 'package:baac_reservation/widgets/RoomStatus/freeRoom.dart';
import 'package:flutter/material.dart';

class RoomCard extends StatefulWidget {
  RoomCard({Key key}) : super(key: key);

  @override
  _RoomCardState createState() => _RoomCardState();
}

class _RoomCardState extends State<RoomCard> {
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
            FreeRoom(),
          ],
        ),
      ),
      
    );
  }
}