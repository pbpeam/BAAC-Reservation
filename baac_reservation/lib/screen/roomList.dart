import 'package:baac_reservation/widgets/customRoom.dart';
import 'package:flutter/material.dart';

class RoomList extends StatefulWidget {
  RoomList({Key key}) : super(key: key);

  @override
  _RoomListState createState() => _RoomListState();
}

class _RoomListState extends State<RoomList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),

      body: 
        ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {  
          return CustomRoom();
        },

      ),

    );
  }
}