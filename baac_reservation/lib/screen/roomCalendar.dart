import 'package:flutter/material.dart';

class RoomCalendar extends StatefulWidget {
  RoomCalendar({Key key}) : super(key: key);

  @override
  _RoomCalendarState createState() => _RoomCalendarState();
}

class _RoomCalendarState extends State<RoomCalendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),

      body: DefaultTabController(
        length: 2, 
        child: Column(
          children: <Widget>[

            Container(
              color: Colors.green,
              child: TabBar(
                tabs: [
                  Tab(text: 'Available'),
                  Tab(text: 'Reserved'),
                ], 
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  Text('data1'),
                  Text('data2'),
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}