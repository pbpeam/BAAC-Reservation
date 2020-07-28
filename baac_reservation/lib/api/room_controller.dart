import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';
import 'dart:io';
import 'package:baac_reservation/api/user_controller.dart';

class RoomController{
  var header =  getAuthorizationHeader();
  static const String url = 'https://baac-reserve.herokuapp.com';
  

  static Future<Room> fetchRoom() async{
    var data = await http.get(url + '/account/rooms',);
    
    var body = json.decode(data.body);
    var room = Room(
      roomId: body['rooms'],
    );
    // try{
    //   var body  = json.decode(data.body);

    // log(data.body);

    // var room = Room(
    //   roomId: body['rooms'],
    // );

    // var id = body['rooms'];

    // log('$id');

    // }
    // on FormatException{
    //   print(data.body);
    // }

    return room;
  }
}

class Room{
  String roomId;

  Room({this.roomId});
}

