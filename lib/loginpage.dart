import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'register.dart';
import 'FadeAnimation.dart';
import 'menu.dart';

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
  
  home: 
        LoginUser()
    );}}

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
  var data = {'email': email, 'password' : password};

  // Starting Web API Call.
  var response = await http.post(url, body: json.encode(data));

  // Getting Server response into variable.
  var message = jsonDecode(response.body);

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
        MaterialPageRoute(builder: (context) => MenuApp())
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
            child: new Text("OK"),
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
      backgroundColor: Colors.blue[200],
    
      body: SingleChildScrollView(
      	child: Container(
	        child: Column(
	          children: <Widget>[
	            Container(
	              height: 300,
	              decoration: BoxDecoration(
	                image: DecorationImage(
	                  image: AssetImage('images/pic.jpg'),
                    
	                  fit: BoxFit.cover
	                )
	              ),
	              child: Stack(
	                children: <Widget>[
	                  Positioned(
	                    child: FadeAnimation(1.6, Container(
	                      margin: EdgeInsets.only(top: 1),
	                      child: Center(
	                        child: Text("YUM\n\tWE \n\t Go", 
                          style: TextStyle(color: Colors.yellow[200],
                           fontSize: 60, fontWeight: FontWeight.bold,
                          
                          
                          ),),
	                      ),
	                    )),
	                  )
	                ],
	              ),
	            ),
	            Padding(
	              padding: EdgeInsets.all(30.0),
	              child: Column(
	                children: <Widget>[
	                  FadeAnimation(1.8, Container(
	                    padding: EdgeInsets.all(5),
	                    decoration: BoxDecoration(
	                      color: Colors.white,
	                      borderRadius: BorderRadius.circular(10),
	                      boxShadow: [
	                        BoxShadow(
	                          color: Color.fromRGBO(143, 148, 251, .2),
	                          blurRadius: 20.0,
	                          offset: Offset(0, 10)
	                        )
	                      ]
	                    ),
	                    child: Column(
	                      children: <Widget>[
	                        Container(
	                          padding: EdgeInsets.all(8.0),
	                          decoration: BoxDecoration(
	                            border: Border(bottom: BorderSide(color: Colors.grey[100]))
	                          ),
	                          child: TextField(
                              controller: emailController,
                              autocorrect: true,
	                            decoration: InputDecoration(
	                              border: InputBorder.none,
	                              hintText: "Email",
	                              hintStyle: TextStyle(color: Colors.grey[400])
	                            ),
	                          ),
	                        ),
	                        Container(
	                          padding: EdgeInsets.all(8.0),
	                          child: TextField(
                              controller: passwordController,
                              autocorrect: true,
                              obscureText: true,
	                            decoration: InputDecoration(
	                              border: InputBorder.none,
	                              hintText: "Password",
	                              hintStyle: TextStyle(color: Colors.grey[400])
	                            ),
	                          ),
	                        )
	                      ],
	                    ),
	                  )),
	                  SizedBox(height: 30,),
	                  FadeAnimation(2, 
                    RaisedButton(
                      onPressed: userLogin,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [Color(0xFFFFF59D), Color(0xfffffDE7)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            ),
                        borderRadius: BorderRadius.circular(10.0)
                             ),
                        child: Container(
                           constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "Login",
                               textAlign: TextAlign.center,
                              style: TextStyle(
                               color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ),
                      
                    ),
                    SizedBox(height: 30,),
	                  FadeAnimation(2, 
                    RaisedButton(
                      onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterUser())
                      );},
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [Color(0xfffff59D), Color(0xfffffDE7)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            ),
                        borderRadius: BorderRadius.circular(10.0)
                             ),
                        child: Container(
                           constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "Sign-up",
                               textAlign: TextAlign.center,
                              style: TextStyle(
                               color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ),
                      
                    ),
                    Visibility(
                    visible: visible, 
                    child: Container(
                   margin: EdgeInsets.only(bottom:40),
                    child: CircularProgressIndicator()
            )
          ),
	                  SizedBox(height: 10,),
	                  FadeAnimation(1.5, Text("", style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),)),
                    
	                ],
	              ),
	            )
	          ],
	        ),
	      ),
      )
    );
  }
}