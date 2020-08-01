import 'package:baac_reservation/widgets/customButton.dart';
import 'package:flutter/material.dart';

class ReservationPage extends StatefulWidget {
  @override
  _ReservationPageState createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
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

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // hintText: 'Room'
                  ),
                ),
              ),

              Text('Topic'),
              Container(
                width: 400,
                height: 40,

                child: TextField(
                  obscureText: false,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // hintText: 'Topic'
                  ),
                ),
              ),

              Text('Chairman'),
              Container(
                width: 400,
                height: 40,

                child: TextField(
                  obscureText: false,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // hintText: 'Chairman'
                  ),
                ),
              ),

              Text('Date'),
              Container(
                width: 400,
                height: 40,

                child: TextField(
                  obscureText: false,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // hintText: 'Date'
                  ),
                ),
              ),

              Text('Time start'),
              Container(
                width: 400,
                height: 40,

                child: TextField(
                  obscureText: false,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // hintText: 'Date'
                  ),
                ),
              ),

              Text('Time end'),
              Container(
                width: 400,
                height: 40,

                child: TextField(
                  obscureText: false,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // hintText: 'Date'
                  ),
                ),
              ),
              
              Text('Participant'),
              Container(
                width: 400,
                height: 40,

                child: TextField(
                  obscureText: false,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // hintText: 'Date'
                  ),
                ),
              ),

              Container(
                height: 10,
              ),

              new GestureDetector(
                onTap: null,

                child: CustomButton(
                  title: 'Reserve'
                )
              )
            ],
            
          ),
        ),
      ),
    );
  }
}