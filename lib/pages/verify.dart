import 'dart:convert';
import 'dart:ui';

import 'package:amin/driver/register_Driver.dart';
import 'package:amin/pages/phone.dart';
import 'package:amin/pages/splash.dart';
import 'package:amin/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../driver/driver_main.dart';


class VerifyScreen extends StatefulWidget {
  final String phone;
  final String id;
  VerifyScreen({Key key, this.phone, this.id}): super (key: key);
  @override
  _VerifyScreenStste createState() => _VerifyScreenStste();
}

class _VerifyScreenStste extends State<VerifyScreen> {
  //String _baseUrl= Constants.baseUrl;
  String _items = "";
  String _cats = "";
  String _phone,_id;
  int check = 0;
  int postStatus = 0,checkStatus = 0;


  @override
  void initState() {
    super.initState();
    _phone = "0991400444";
    _id = widget.id;
  }


  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  static final TextEditingController _a = new TextEditingController();
  static final TextEditingController _b = new TextEditingController();
  static final TextEditingController _c = new TextEditingController();
  static final TextEditingController _d = new TextEditingController();

  FocusNode _af = new FocusNode();
  FocusNode _bf = new FocusNode();
  FocusNode _cf = new FocusNode();
  FocusNode _df = new FocusNode();
  final _loginForm = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
        key: _scaffoldKey,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[

            Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new ExactAssetImage('assets/schoolpickup.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: new Container(
                  decoration: new BoxDecoration(color: Colors.black.withOpacity(0.6)),
                ),
              ),
            ),

            Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Center(
                        //padding: EdgeInsets.only(top: 20),
                        child: Text("OTP Verfication",style: TextStyle(color: Colors.white,fontSize: 40),),
                      ),
                    ),
                    Expanded(
                        flex: 6,
                        child: Container(
                            padding: EdgeInsets.only(left: 20,right: 20),
                            child: Form(
                                key: _loginForm,
                                child: new SingleChildScrollView(
                                    child: new ConstrainedBox(
                                        constraints: new BoxConstraints(),
                                        child: new Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[
                                            Center(
                                              child: Text('Verfication sms has been sent to 0991******',style: TextStyle(color: Colors.white),),
                                            ),
                                            SizedBox(height: 80,),
                                            Row(
                                              children: <Widget>[
                                                Expanded(
                                                    child: new Container(
                                                      padding: EdgeInsets.only(left: 5, right: 5),
                                                      child: TextField(
                                                        controller: _a,
                                                        maxLength: 1,
                                                        focusNode: _af,
                                                        keyboardType: TextInputType.number,
                                                        textAlign: TextAlign.left,
                                                        autofocus: false,
                                                        style: TextStyle(fontWeight: FontWeight.bold),
                                                        decoration: InputDecoration(
                                                          enabledBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.white),
                                                          ),
                                                          focusedBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color: AppColors.mainColor),
                                                          ),
                                                        ),
                                                        onChanged: (value) {
                                                          if (value.length >= 1) {
                                                            setState(() {
                                                              _a.text = value;
                                                            });
                                                            FocusScope.of(context).requestFocus(_bf);
                                                          }
                                                        },

                                                      ),
                                                    )
                                                ),
                                                Expanded(
                                                    child: new Container(
                                                      padding: EdgeInsets.only(left: 5, right: 5),
                                                      child: TextField(
                                                        controller: _b,
                                                        maxLength: 1,
                                                        focusNode: _bf,
                                                        keyboardType: TextInputType.number,
                                                        textAlign: TextAlign.left,
                                                        autofocus: false,
                                                        style: TextStyle(fontWeight: FontWeight.bold),
                                                        decoration: InputDecoration(
                                                          enabledBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.white),
                                                          ),
                                                          focusedBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color: AppColors.mainColor),
                                                          ),
                                                        ),
                                                        onChanged: (value) {
                                                          if (value.length >= 1) {
                                                            setState(() {
                                                              _b.text = value;
                                                            });
                                                            FocusScope.of(context).requestFocus(_cf);
                                                          }
                                                        },

                                                      ),
                                                    )
                                                ),

                                                Expanded(
                                                    child: new Container(
                                                      padding: EdgeInsets.only(left: 5, right: 5),
                                                      child: TextField(
                                                        controller: _c,
                                                        maxLength: 1,
                                                        focusNode: _cf,
                                                        keyboardType: TextInputType.number,
                                                        textAlign: TextAlign.left,
                                                        autofocus: false,
                                                        style: TextStyle(fontWeight: FontWeight.bold),
                                                        decoration: InputDecoration(
                                                          enabledBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.white),
                                                          ),
                                                          focusedBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color: AppColors.mainColor),
                                                          ),
                                                        ),
                                                        onChanged: (value) {
                                                          if (value.length >= 1) {
                                                            setState(() {
                                                              _c.text = value;
                                                            });
                                                            FocusScope.of(context).requestFocus(_df);
                                                          }
                                                        },

                                                      ),
                                                    )
                                                ),

                                                Expanded(
                                                    child: new Container(
                                                      padding: EdgeInsets.only(left: 5, right: 5),
                                                      child: TextField(
                                                        controller: _d,
                                                        maxLength: 1,
                                                        focusNode: _df,
                                                        keyboardType: TextInputType.number,
                                                        textAlign: TextAlign.left,
                                                        autofocus: false,
                                                        style: TextStyle(fontWeight: FontWeight.bold),
                                                        decoration: InputDecoration(
                                                          enabledBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.white),
                                                          ),
                                                          focusedBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color: AppColors.mainColor),
                                                          ),
                                                        ),
                                                        onChanged: (value) {
                                                          if (value.length >= 1) {
                                                            setState(() {
                                                              _d.text = value;
                                                              Navigator.of(context).pushReplacement(
                                                                new MaterialPageRoute(
                                                                  builder: (BuildContext context)=>new RegisterDriver(),
                                                                ),
                                                              );

                                                            });
                                                            //FocusScope.of(context).requestFocus(_df);
                                                          }
                                                        },

                                                      ),
                                                    )
                                                ),
                                              ],
                                            ),



                                            SizedBox(height: 40.0),

                                            Center(
                                              //padding: EdgeInsets.only(top: 20),
                                              child: Text("If you didn't get the SMS in 60 secends please press RESEND button",style: TextStyle(color: Colors.white),),
                                            ),

                                            SizedBox(height: 40.0),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Padding(
                                                    padding: EdgeInsets.only(bottom: 10,top: 40,left: 20,right: 20),
                                                    child: Container(
                                                      width: 140,
                                                      height: 50,
                                                      child: PhysicalModel(
                                                        borderRadius: new BorderRadius.circular(50.0),
                                                        color: Colors.transparent,
                                                        child: Stack(
                                                          alignment: Alignment.center,
                                                          children: <Widget>[
                                                            new Container(
                                                              width: 140.0,
                                                              height: 50.0,
                                                              decoration: new BoxDecoration(
                                                                borderRadius: new BorderRadius.circular(50.0),
                                                                border: new Border.all(
                                                                  width: 1.0,
                                                                  color: Colors.white,
                                                                ),
                                                              ),


                                                            ),
                                                            FlatButton(
                                                              child: Text ("CANCEL", style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                                                              onPressed: (){
                                                                Navigator.of(context).push(
                                                                  new MaterialPageRoute(
                                                                    builder: (BuildContext context)=> Splash(),
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
                                                    padding: EdgeInsets.only(bottom: 10,top: 40,left: 20,right: 20),
                                                    child: Container(
                                                      width: 140,
                                                      height: 50,
                                                      child: PhysicalModel(
                                                        borderRadius: new BorderRadius.circular(50.0),
                                                        color: Colors.transparent,
                                                        child: Stack(
                                                          alignment: Alignment.center,
                                                          children: <Widget>[
                                                            new Container(
                                                              width: 140.0,
                                                              height: 50.0,
                                                              decoration: new BoxDecoration(
                                                                borderRadius: new BorderRadius.circular(50.0),
                                                                border: new Border.all(
                                                                  width: 1.0,
                                                                  color: Colors.white,
                                                                ),
                                                              ),


                                                            ),
                                                            FlatButton(
                                                              child: Text ("RESEND", style: TextStyle(color: Colors.white),),
                                                              onPressed: (){
                                                                Navigator.of(context).push(
                                                                  new MaterialPageRoute(
                                                                    builder: (BuildContext context)=> Phone(),
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
                                            ),
                                          ],
                                        )
                                    )
                                )
                            )

                        )
                    )
                  ],
                )
            ),

          ],
        )
    );
  }

  _onToLog() {

  }

  _onToDone(String token) {

  }

  Future<void> _wrongPost(String message) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Error"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(message),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(" done"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}