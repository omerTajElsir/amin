import 'dart:ui';

import 'package:amin/pages/phone.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChooseType extends StatefulWidget {
  _ChooseTypeState createState() => _ChooseTypeState();
}

class _ChooseTypeState extends State<ChooseType> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      //backgroundColor: AppColors.mainColor,
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new ExactAssetImage('assets/schoolpickup.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: new BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
              child: new Container(
                decoration: new BoxDecoration(color: Colors.black.withOpacity(0.5)),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Padding(
                  padding: EdgeInsets.only(bottom: 10,top: 100),
                  child: Container(
                    width: 300,
                    height: 50,
                    child: PhysicalModel(
                      borderRadius: new BorderRadius.circular(15.0),
                      color: Color(0x88000000),
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          new Container(
                            width: 300.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(15.0),
                              border: new Border.all(
                                width: 1.0,
                                color: Colors.white,
                              ),
                            ),


                          ),
                          FlatButton(
                            child: Text ("DRIVER", style: TextStyle(color: Colors.white),),
                            onPressed: (){
                              Navigator.of(context).pushReplacement(
                                new MaterialPageRoute(
                                  builder: (BuildContext context)=>new Phone(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 10,top: 20),
                  child: Container(
                    width: 300,
                    height: 50,
                    child: PhysicalModel(
                      borderRadius: new BorderRadius.circular(15.0),
                      color: Color(0x88000000),
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          new Container(
                            width: 300.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(15.0),
                              border: new Border.all(
                                width: 1.0,
                                color: Colors.white,
                              ),
                            ),


                          ),
                          FlatButton(
                            child: Text ("PARENT", style: TextStyle(color: Colors.white),),
                            onPressed: (){
                              Navigator.of(context).pushReplacement(
                                new MaterialPageRoute(
                                  builder: (BuildContext context)=>new Phone(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}