// import 'package:baac_reservation/widgets/calendar.dart';
import 'package:baac_reservation/screen/roomCalendar.dart';
// import 'package:baac_reservation/widgets/roomList.dart';
import 'package:baac_reservation/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  // CalendarPage({Key key}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),

      body: Center(
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,

          children: <Widget>[
            TableCalendar(
              calendarStyle: CalendarStyle(
              ),
              calendarController: _calendarController,

              //Day Selection
              onDaySelected: (day, events) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RoomCalendar()),
                );
              },
            ),

            //View Room Button
            new GestureDetector(
              
              child: CustomButton(
                title: 'View Room',
              ),
              
              onTap: (){
                Navigator.pushNamed(context,'/rooms');
              },
            ),

            // GestureDetector(
            //   onTap: (){
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => RoomCalendar()),);
            //   },
              
            //   //Calendar Room
            //   child: CustomButton(
            //     title: 'View Calendar Room',
            //   ),
            // ),

          ],
        ),
      ),
    );
  }
}