import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();

  // final String title;
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
      ),

      body: Container(
        // color: Colors.green,
        child: Center(


          child: Column(

            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              //  Text('This is Login page'),
              // Text('Login'),
              buildTextFieldEmail(),
              buildTextFieldPassword(),
              buildSignInButton(),

            ],

          ),
        ),
      ),
    );
  }
}

//sign in button
Container buildSignInButton(){
  return Container(
    constraints: BoxConstraints.expand(height: 50),
    child: Text("Sign in",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18, color: Colors.white)
        
    ),

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16), color: Colors.green[200]
    ),

    margin: EdgeInsets.only(top: 16),
    padding: EdgeInsets.all(12),

  );
}

//Email field
Container buildTextFieldEmail(){
  return Container(
    padding: EdgeInsets.all(12),
    margin: EdgeInsets.only(top: 12),

    decoration: BoxDecoration(
       color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)
    ),

    child: TextField(
      obscureText: true,
      decoration: InputDecoration.collapsed(hintText: "Email"),
      style: TextStyle(fontSize: 18)
    ),

  );
}

//PW field
Container buildTextFieldPassword(){
  return Container(
    padding: EdgeInsets.all(12),
    margin: EdgeInsets.only(top: 12),

    decoration: BoxDecoration(
      color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)
    ),

    child: TextField(
      obscureText: true,
      decoration: InputDecoration.collapsed(hintText: "Password"),
      style: TextStyle(fontSize: 18)
    )
  );
}