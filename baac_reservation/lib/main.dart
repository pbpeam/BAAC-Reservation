import 'package:baac_reservation/api/user_controller.dart';
import 'package:baac_reservation/screen/homePage.dart';
import 'package:baac_reservation/screen/loginPage.dart';
import 'package:baac_reservation/screen/roomList.dart';
import 'package:flutter/material.dart';

var initialRoute = '';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final isLoggedIn = await UserController.isLoggedIn();
  
  initialRoute = isLoggedIn ? '/home' : '/login';
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),

      initialRoute: initialRoute,
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => Home(),
        '/rooms': (context) => RoomList(),
      },
    );
  }
}

