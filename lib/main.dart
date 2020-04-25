import 'package:flutter/material.dart';
import 'package:uzairleo_homewifi/Screens/Login.dart';
import 'package:uzairleo_homewifi/Screens/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
      home:
      // LoginSevenPage()
      // Text("uzairleo")
      SplashScreen(),
    );
  }
}