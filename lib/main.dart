import 'package:amin/pages/choose_type.dart';
import 'package:amin/pages/main_page.dart';
import 'package:amin/pages/phone.dart';
import 'package:amin/pages/splash.dart';
import 'package:amin/pages/verify.dart';
import 'package:flutter/material.dart';
import 'driver/register_Driver.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
      ),
      home: RegisterDriver(),
    );
  }
}


