import 'dart:convert';
// import 'package:baac_reservation/widgets/roomList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';
// import 'dart:io';
import 'package:baac_reservation/api/user_controller.dart';

import 'model/rooms.dart';

class RoomController {
  static final String url = 'https://baac-reserve.herokuapp.com';
  static var header = UserController.getAuthorizationHeader();

  static Future<List<Room>> fetchRoom() async {
    http.Response res = await http.get(
      url + '/account/rooms',
      headers: await header,
    );
    List<Room> result = [];

    try {
      log(res.body);

      var body = json.decode(res.body);

      for (var i = 0; i < body['data'].length; i++) {
        var jsonRoom = body['data'][i];

        result.add(Room.fromJSON(jsonRoom));

        // print(result[i]);
      }

      return result;
    } on FormatException {
      print(res.body);
      return null;
    }
  }

  //Reservation System
  static Future<bool> reservation(
    String roomID,
    String topic,
    String chairman,
    String date,
    String timeStart,
    String timeEnd,
    // String time,
    String participants,
  ) async {
    log('Get data: ' +
        '$roomID ' +
        '$topic ' +
        '$chairman ' +
        '$date ' +
        '$timeStart ' +
        '$timeEnd ' +
        // '$time '+
        '$participants');

    var queryParameters = {
      'roomID': '$roomID',
      'topic': '$topic',
      'chairman': '$chairman',
      'date': '$date',
      'timeStart': '$timeStart',
      'timeEnd': '$timeEnd',
      // 'time': '$time',
      'participants': '$participants',
    };

    log('show Query: ' + '$queryParameters');

    //URI
    var uri = Uri.https(
        'baac-reserve.herokuapp.com', '/account/reserve', queryParameters);

    var res = await http.post(
      uri,
      headers: await header,);

    Map<String, dynamic> body = json.decode(res.body);

    
    if((body['status']) == 'success'){
      log('Send successful');
      log('$body');
      return true;
    }
    else{
      log('Send Failed');
      SnackBar(content: Text('Please correct your form'));
      print('$body');
      return false;
    }

  }
}
