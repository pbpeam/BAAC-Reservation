import 'dart:convert';
import 'package:baac_reservation/screen/roomList.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';
import 'dart:io';
import 'package:baac_reservation/api/user_controller.dart';

import 'model/rooms.dart';

class RoomController {
  static const String url = 'https://baac-reserve.herokuapp.com';
  static var header = UserController.getAuthorizationHeader();  

  // static var result = new List();
  static List<Room> result = [];
  // RoomList result;

  static Future<List<Room>> fetchRoom() async{
    http.Response res = await http.get(url + '/account/rooms',
    headers: await header,);
    
    // var body = json.decode(data.body);
    // var room = Room(
    //   roomId: body['room'],
    // );

    try{
      log(res.body);

      var body  = json.decode(res.body);
      // var roomId = body['data'];
      // return Room.fromJSON(body['data'][0]);

      for(var i=0; i<body['data'].length; i++){
        var jsonRoom = body['data'][i];
        // result[i] = Room.fromJSON(jsonRoom);

        result.add(Room.fromJSON(jsonRoom));

        // print(result[i]);
      }
      
      return result;

    }on FormatException{
      print(res.body);
      return null;
    }
  }
}

// class Room{
//   var roomId;

//   Room({this.roomId});
// }

