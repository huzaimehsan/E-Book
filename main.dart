import 'package:ebook/homepage.dart';
import 'package:flutter/material.dart';
import 'package:ebook/login.dart';
import 'package:ebook/register.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App Name',
      theme: ThemeData(
        // Define your app's theme here
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'login', // Set the initial route to 'login'
      routes: {
        'register': (context) => MyRegister(),
        'login': (context) => MyLogin(),
        'login': (context) => MyHomePage(),

        // You can add more routes if needed
      },
    );
  }
}