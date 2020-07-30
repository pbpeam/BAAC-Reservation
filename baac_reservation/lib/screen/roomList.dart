import 'package:baac_reservation/api/model/rooms.dart';
import 'package:baac_reservation/api/room_controller.dart';
import 'package:baac_reservation/widgets/RoomStatus/freeRoom.dart';
import 'package:flutter/material.dart';
// import 'package:baac_reservation/widgets/roomCard.dart';

class RoomList extends StatefulWidget {
  RoomList({Key key}) : super(key: key);

  @override
  _RoomListState createState() => _RoomListState();
}

class _RoomListState extends State<RoomList> {
  
  
  List<Room> currentRoom;
  bool isLoading = false;
  List<Room> result =[];

  var room = RoomController.fetchRoom();

  @override
  void initState() {    // when the widget is first created
    super.initState();
    fetchCurrentRoom();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),

      body: 
        ListView.builder(
        // itemCount: RoomController.result.length,
        itemBuilder: (BuildContext context, int index) { 
          
          return Card(
            margin: EdgeInsets.fromLTRB(16, 16, 16, 0),

            child: Container(
              
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              width: 100,
              height: 50,
              
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[
                  (( currentRoom != null ) ?
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // Text('${currentRoom[index]}'),
                        // FreeRoom(),

                        Container(
                          child: ListView.builder(
                            itemBuilder: (BuildContext context, int index){
                              return currentRoom[index];
                            },
                          ),
                        ),
                        ],
                    )
                    :
                    Text('null')
                  ),
                ]
              )
            ),
          );
        },

      ),

    );
  }

  void fetchCurrentRoom() async{
    setState(() {
      isLoading = true;
    });

    var fetchedRoom = await RoomController.fetchRoom();

    setState(() {
      isLoading = false;
      currentRoom = fetchedRoom;
    });
  }
}