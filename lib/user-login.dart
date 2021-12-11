import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'user-register.dart';

class LoginUser extends StatefulWidget {

LoginUserState createState() => LoginUserState();

} 

class LoginUserState extends State {

  // For CircularProgressIndicator.
  bool visible = false ;

  // Getting value from TextField widget.
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

Future userLogin() async{

  // Showing CircularProgressIndicator.
  setState(() {
  visible = true ; 
  });

  // Getting value from Controller
  String email = emailController.text;
  String password = passwordController.text;

  // SERVER LOGIN API URL
  var url = 'https://devdizon.000webhostapp.com/user-login.php';

  // Store all data with Param Name.
  var data = {'$email': email, '$password' : password};

  // Starting Web API Call.
  var response = await http.post(url, body: json.encode(data));

  // Getting Server response into variable.
  var message = jsonDecode(response.body.toString());

  // If the Response Message is Matched.
  if(message == 'Login')
  {

    // Hiding the CircularProgressIndicator.
      setState(() {
      visible = false; 
      });

    // Navigate to Profile Screen & Sending Email to Next Screen.
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfileScreen(email : emailController.text))
      );
  }else{

    // If Email or Password did not Matched.
    // Hiding the CircularProgressIndicator.
    setState(() {
      visible = false; 
      });

    // Showing Alert Dialog with Response JSON Message.
    showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text(message),
        actions: <Widget>[
          FlatButton(
            child: new Text("Connected"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
    );}

}

@override
Widget build(BuildContext context) {
return Scaffold(
  body: SingleChildScrollView(
    child: Center(
    child: Column(
      children: <Widget>[

        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text('User Log In', 
                  style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold))),

        Divider(),          

        Container(
        width: 280,
        padding: EdgeInsets.all(10.0),
        child: TextField(
            controller: emailController,
            autocorrect: true,
            decoration: InputDecoration(hintText: 'Enter Email '),
          )
        ),

        Container(
        width: 280,
        padding: EdgeInsets.all(10.0),
        child: TextField(
            controller: passwordController,
            autocorrect: true,
            obscureText: true,
            decoration: InputDecoration(hintText: 'Enter Password '),
          )
        ),

        RaisedButton(
          onPressed: userLogin,
          color: Colors.green,
          textColor: Colors.white,
          padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
          child: Text('Login'),
        ),
          RaisedButton(
          onPressed:(){Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RegisterUser())
      );},
          color: Colors.green,
          textColor: Colors.white,
          padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
          child: Text('Sign-up'),
        ),
         Visibility(
          visible: visible, 
          child: Container(
            margin: EdgeInsets.only(bottom: 50),
            child: CircularProgressIndicator()
            )
          ),

      ],
    ),
  )));
}
}

class ProfileScreen extends StatelessWidget {

// Creating String Var to Hold sent Email.  
final String email;

// Receiving Email using Constructor.
ProfileScreen({Key key, @required this.email}) : super(key: key);

// User Logout Function.
logout(BuildContext context){

  Navigator.pop(context);

}

@override
Widget build(BuildContext context) {
return MaterialApp(
  home: Scaffold(
      appBar: AppBar(title: Text('Profile Screen'),
      automaticallyImplyLeading: false),
      body: Center(
        child: Column(children: <Widget>[

          Container(
          width: 280,
          padding: EdgeInsets.all(10.0),
          child: Text('Email = ' + "'\n'" + email, 
                style: TextStyle(fontSize: 20))
            ),

          RaisedButton(
          onPressed: () {
            logout(context);
          },
          color: Colors.red,
          textColor: Colors.white,
          child: Text('Logout'),
        ),

        ],)
        )
      )
    );
}
}