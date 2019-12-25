import 'dart:async';

import 'package:amin/utils/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'choose_type.dart';

class Splash extends StatefulWidget {
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  TextEditingController textEditingController = new TextEditingController();
  final _SplashForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    Timer(Duration(seconds: 4),(){
      Navigator.of(context).pushReplacement(
        new MaterialPageRoute(
          builder: (BuildContext context)=>new ChooseType(),
        ),
      );
    });

    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            width: screenWidth,
            height: screenHeight,
            child: Image.asset(
              "assets/schoolpickup.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Color(0x66000000),
          ),

          Column(
            children: <Widget>[

              SizedBox(height: 100,),
              Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: Container(
                      padding: EdgeInsets.all(12),
                      child: Image.asset("assets/applogo.png"),
                    ),

                  )
              ),
              SizedBox(height: 20,),
              Text("AMIN",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
              Expanded(
                child: Container(),
              ),
              
              CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.amber),),
              Padding(
                padding: EdgeInsets.only(bottom: 40,top: 40),
                child: Text(
                  "2019 © by MANA Studios",
                  style: TextStyle(color: Colors.white,fontSize: 16),
                ),
              )


            ],
          )
        ],
      ),

    );




  }
}