
import 'package:baac_reservation/screen/login.dart';
import 'package:baac_reservation/widgets/button.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

      ),
       body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,

          children: <Widget>[

            CustomButton(
              title: 'Book a room',

              // new GestureDetector()
            ),

            CustomButton(
              title: 'My reservation',
            ),

            CustomButton(
              title: 'Sign in meeting'
            ),
            
            //  buildButton(),
          ],

         ),
       ),
    );
  }
}

// Container buildButton(){
//   return Container(
//     child: Card(
//       child: InkWell(
//         splashColor: Colors.lightGreenAccent,
//         onTap: (){
//           print('Card tapped');
//         },
//         child: Container(
//           width: 325,
//           height: 50,
//           color: Colors.grey[300],

//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             mainAxisSize: MainAxisSize.max,

//           ),
//         ),
//       ),
//     ),
//   );
// }