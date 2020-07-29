import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:developer';
import 'dart:io';
import 'package:baac_reservation/api/user_controller.dart';

import 'model/rooms.dart';

class RoomController {
  static const String url = 'https://baac-reserve.herokuapp.com';
  static var header = UserController.getAuthorizationHeader();
  
  static Future<Room> fetchRoom() async{
    http.Response res = await http.get(url + '/account/rooms',
    headers: await header,);
    List<Room> result;
    
    // var body = json.decode(data.body);
    // var room = Room(
    //   roomId: body['room'],
    // );

    try{
      log(res.body);
      var body  = json.decode(res.body);

      return Room.fromJSON(body['data'][0]);

      // for(var i=0; i<['data'].length; i++){
      //   result = (body['data'][i]);
      //   return result;
      // }

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

