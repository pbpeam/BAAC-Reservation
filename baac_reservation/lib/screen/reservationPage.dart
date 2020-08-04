import 'package:baac_reservation/api/room_controller.dart';
// import 'package:baac_reservation/widgets/customButton.dart';
import 'package:flutter/material.dart';
// import 'package:date_format/date_format.dart';

class ReservationPage extends StatefulWidget {
  @override
  _ReservationPageState createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  final roomID = TextEditingController();
  final topic = TextEditingController();
  final chairman = TextEditingController();
  var meetingDate = TextEditingController();
  final timeStart = TextEditingController();
  final timeEnd = TextEditingController();
  final participants = TextEditingController();

  bool isFormValidated = false;
  DateTime dateTime = DateTime.now();

  //Create a blank checking
  void computeFormValidated(){
    setState(() {
      isFormValidated = 
      roomID.text.length > 0 &&
      topic.text.length > 0 && 
      chairman.text.length > 0 && 
      meetingDate.text.length > 0 && 
      timeStart.text.length > 0 && 
      timeEnd.text.length > 0 && 
      participants.text.length > 0;
    });
  }

  @override
  void initState() { 
    super.initState();

    roomID.addListener(computeFormValidated);
    topic.addListener(computeFormValidated);
    chairman.addListener(computeFormValidated);
    meetingDate.addListener(computeFormValidated);
    timeStart.addListener(computeFormValidated);
    timeEnd.addListener(computeFormValidated);
    roomID.addListener(computeFormValidated);
    participants.addListener(computeFormValidated);
  }



  //UI part
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Room'),
                Container(
                  width: 400,
                  height: 40,
                  child: TextField(
                    obscureText: false,
                    controller: roomID,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Text('Topic'),
                Container(
                  width: 400,
                  height: 40,
                  child: TextField(
                    obscureText: false,
                    controller: topic,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Text('Chairman'),
                Container(
                  width: 400,
                  height: 40,
                  child: TextField(
                    obscureText: false,
                    controller: chairman,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                Text('Date'),
                Container(
                  width: 400,
                  height: 40,
                  child: TextField(
                    obscureText: false,
                    controller: meetingDate,
                    decoration: InputDecoration(
                      hintText: 'yyyy/MM/dd',
                      border: OutlineInputBorder(),
                    ),
                  ),
                // ),
                // RaisedButton( 
                //   child: Text('Select Date'),
                //   onPressed: () {
                //     showDatePicker(
                //       context: context, 
                //       initialDate: dateTime, 
                //       firstDate: DateTime(2020), 
                //       lastDate: DateTime(2222)
                //     )
                //     .then ((date) {
                //       setState(() {
                //         dateTime = date;
                //         meetingDate.text = dateTime as String;
                //       });
                //     });

                //   },
                ),

                Text('Time start'),
                Container(
                  width: 400,
                  height: 40,
                  child: TextField(
                    obscureText: false,
                    controller: timeStart,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Text('Time end'),
                Container(
                  width: 400,
                  height: 40,
                  child: TextField(
                    obscureText: false,
                    controller: timeEnd,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                Text('Participant'),
                Container(
                  width: 400,
                  height: 40,
                  child: TextField(
                    obscureText: false,
                    controller: participants,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                
                RaisedButton(
                  child:  Text('Reserve'),
                  color: Colors.green,
                  onPressed: (){
                    _showDialog();
                  }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        
        return AlertDialog(
          title: new Text("Reservation Confirmation"),
          content: new Text("Do you want to reserve this room?"),
          actions: <Widget>[

            new FlatButton(
              child: new Text('Confirm'),
              onPressed: () {
                Navigator.of(context).pop();
                // Navigator.pushNamed(context,'/rooms');  
                isFormValidated ?
                      RoomController.reservation(
                          roomID.text,
                          topic.text,
                          chairman.text,
                          meetingDate.text,
                          timeStart.text,
                          timeEnd.text,
                          participants.text,
                      )
                      :
                      print(null);
              },
            ),
            new FlatButton(
              child: new Text('Cancel'),
              onPressed: (){
                Navigator.of(context).pop();
              }, 
            ),
          ],
        );
      },
    );
  }

}
