import 'package:flutter/material.dart';
import 'package:gemstone2/ui/homepages/mainhomepage.dart';
import 'package:gemstone2/ui/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GEMSTONE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Signin(),
      debugShowCheckedModeBanner: false,
      //splashscreen(),Home(),mainHomePage()
    );
  }
}



