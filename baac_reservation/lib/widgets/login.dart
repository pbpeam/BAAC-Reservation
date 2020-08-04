// import 'package:baac_reservation/screen/homePage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:baac_reservation/api/user_controller.dart';

Future<http.Response> fetchAlbum() {
  return http.get('https://baac-reserve.herokuapp.com/');
}

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();

  // final String title;
}

class _LoginState extends State<Login> {

  bool isLoading = false;
  bool isFormValidated = false;
  bool isPasswordPreviewEnabled = false;

  // TextField Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // fns for computing STATES
  void computeFormValidated() {
    setState(() {
      isFormValidated = emailController.text.length > 0 && passwordController.text.length > 0;
    });
  }

  @override
  void initState() { 
    super.initState();

    emailController.addListener(computeFormValidated);
    passwordController.addListener(computeFormValidated);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  
  void login() async {
    setState(() {
      isLoading = true;
    }
  );
    
    // retrieve data from textfields
    final String email = emailController.text;
    final String pwd = passwordController.text;

    // //Show email/pwd
    // Scaffold.of(context).showSnackBar(
    //       SnackBar( content: Text(email + "\n" + pwd) )
    //     );
        
    try {
      final token = await UserController.login(email, pwd);
      
      if (token != null) {
        Navigator.pushNamedAndRemoveUntil(context, '/home', (Route<dynamic> route) => false);
      }
      else {
        Scaffold.of(context).showSnackBar(
          SnackBar( content: Text("Please try again") )
        );
      }
    } on Exception catch(e) {
      Scaffold.of(context).showSnackBar(SnackBar( content: Text(e.toString()) ));
    }

    setState(() {
      isLoading = false;
    });
  }

  //UI part
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // padding: EdgeInsets.all(24.0),

      appBar: AppBar(

      ),

      body: Container(
        // color: Colors.green,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              Container(
                width: 325,
                child: TextField(
                  obscureText: false,
                  //controller
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email'
                  ),
                ),
              ),

              Container(
                height: 7,
              ),

              Container(
                width: 325,
                child: TextField(
                  obscureText: true,
                  //controller
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password'
                  ),
                ),
              ),              
              
              RaisedButton(
                child: Text('Login'),
                color: Colors.green,

                // onPressed: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => Home()),
                //   );
                // }
                onPressed: isFormValidated ? login : null,
              ),

            ],

          ),
        ),
      ),
    );
  }
}


