import 'package:baac_reservation/widgets/roomList.dart';
import 'package:flutter/material.dart';

class RoomPage extends StatefulWidget {
  RoomPage({Key key}) : super(key: key);

  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(

       ),

       body: RoomList(),
    );
  }
}