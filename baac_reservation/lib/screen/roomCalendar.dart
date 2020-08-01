import 'package:baac_reservation/widgets/roomList.dart';
import 'package:baac_reservation/widgets/reservedRoom.dart';
import 'package:flutter/material.dart';
// import 'package:baac_reservation/widgets/roomCard.dart';

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
                  // ListView.builder(
                  //   itemCount: 4,
                  //   itemBuilder: (BuildContext context, int index) {  
                  //     return RoomList();
                  //   },
                  // ),
                  RoomList(),

                  ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {  
                      return ReservedRoom();
                    },
                  ),
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}