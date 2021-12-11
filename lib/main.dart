import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'FadeAnimation.dart';
import 'loginpage.dart';

void main() => runApp(
   MaterialApp(
  
    home: new MyApp(),  
    )
  );

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
    debugShowCheckedModeBanner: false,
  home: Scaffold(
      appBar: AppBar(title: Text('YUMWEGO',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),  ),
        backgroundColor: Colors.yellow[200],),
      body: Center(
        
        child: 
        LoginUser()
        ),
      )
    );}}