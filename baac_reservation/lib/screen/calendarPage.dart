// import 'package:baac_reservation/widgets/calendar.dart';
import 'package:baac_reservation/screen/roomList.dart';
import 'package:baac_reservation/widgets/button.dart';
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
    // TODO: implement initState
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
            TableCalendar(calendarController: _calendarController),

            new GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RoomList()),);
              },
              
              child: CustomButton(
                title: 'View Room',
              ),
            )
          ],
        ),
      ),
    );
  }
}