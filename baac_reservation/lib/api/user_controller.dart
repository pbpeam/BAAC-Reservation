import 'dart:convert';
// import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserController {
  static final String webUrl = 'https://baac-reserve.herokuapp.com';
  static final String KEY_TOKEN = 'login-token';
  static final storage = new FlutterSecureStorage();

  static Future<bool> login(String email, String password) async{

    // send request
    http.Response res = await http.post(
      webUrl + '/login',
      headers: <String, String> {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{'email': email, 'password': password}),
    );

    // convert response body to JSON
    Map<String, dynamic> body = json.decode(res.body);

    if (res.statusCode == 200) {  // success
      // extract token -> write to storage
      var token = body['data']['token'];
      await storage.write(key: KEY_TOKEN, value: token);
      
      // return true if token is saved successfully
      return isLoggedIn();
    }
    else {
      throw Exception(res.body);
    }
  }

  static void logout(BuildContext context) async {
    // delete saved token, then redirect to login page
    await storage.delete(key: KEY_TOKEN);

    // remove everything in the stack & go to log in page
    Navigator.pushNamedAndRemoveUntil(context, '/login', (Route<dynamic> route) => false);
  }

  static Future<bool> isLoggedIn() async {
    final writtenToken = await storage.read(key: KEY_TOKEN);
    return writtenToken != null;
  }
}
