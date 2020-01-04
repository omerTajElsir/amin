import 'dart:convert';
import 'dart:ui';

import 'package:amin/driver/register_Driver.dart';
import 'package:amin/pages/phone.dart';
import 'package:amin/pages/splash.dart';
import 'package:amin/parent/register_kids.dart';
import 'package:amin/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ParentRegister extends StatefulWidget {
  final String phone;
  final String id;
  ParentRegister({Key key, this.phone, this.id}): super (key: key);
  @override
  _ParentRegisterStste createState() => _ParentRegisterStste();
}

class _ParentRegisterStste extends State<ParentRegister> {
  //String _baseUrl= Constants.baseUrl;
  String _items = "";
  String _cats = "";
  String _phone,_id;
  int check = 0;
  int postStatus = 0,checkStatus = 0;
  String _currentType;

  int flag = 0;

  List types  = ["Sedan","SUV","Cross Over"];
  List<DropdownMenuItem<String>> _dropType;
  List<DropdownMenuItem<String>> getDropType(List _cities) {
    List<DropdownMenuItem<String>> items = new List();
    for (int i = 0;i<_cities.length;i++) {
      String a = _cities[i];
      items.add(new DropdownMenuItem(value: a, child:  new SizedBox(
          width: 200.0,
          child: new Text(a)
      ),));
    }
    return items;
  }

  void changedDropDownItemSub(String selectedCat) {
    setState(() {
      _currentType = selectedCat;
    });
  }

  @override
  void initState() {
    super.initState();
    _phone = "0991400444";
    _id = widget.id;
    _dropType = getDropType(types);
    _currentType = _dropType[0].value;
    _dropSchools = getDropSchools(schools);
    _currentSchools = _dropSchools[0].value;
  }
  String _currentSchools;
  List schools  = ["School 1","School 2","School 3"];
  List<DropdownMenuItem<String>> _dropSchools;
  List<DropdownMenuItem<String>> getDropSchools(List _scholools) {
    List<DropdownMenuItem<String>> items = new List();
    for (int i = 0;i<_scholools.length;i++) {
      String a = _scholools[i];
      items.add(new DropdownMenuItem(value: a, child:  new SizedBox(
          width: 200.0,
          child: new Text(a)
      ),));
    }
    return items;
  }

  void changedDropDownItemSubSchool(String selectedCat) {
    setState(() {
      _currentType = selectedCat;
    });
  }

  static int _radioValue1 = 0;

  String gender = "Full Car";
  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;

      switch (_radioValue1) {
        case 0:
          gender = "Full Car";
          setState(() {
            flag = 0;
          });
          break;
        case 1:
          gender = "By Seat";
          setState(() {
            flag = 1;
          });
          break;
      }
    });
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
                        child: Text("Parent Registration",style: TextStyle(color: Colors.white,fontSize: 40),),
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
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[

                                            Row(
                                              children: <Widget>[
                                                Expanded(
                                                    child: new Container(
                                                      padding: EdgeInsets.only(left: 5, right: 5),
                                                      child: TextFormField(
                                                        controller: _a,
                                                        keyboardType: TextInputType.text,
                                                        //textAlign: TextAlign.left,
                                                        autofocus: false,
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.bold),
                                                        decoration: InputDecoration(
                                                          hintText: 'Name',
                                                          filled: true,
                                                          fillColor: Color(0x55FFFFFF),
                                                          contentPadding: EdgeInsets.fromLTRB(
                                                              20.0, 15.0, 20.0, 15.0),
                                                          border: OutlineInputBorder(
                                                              borderRadius: BorderRadius.circular(
                                                                  15.0)),
                                                        ),
                                                        validator: (value) {
                                                          if (value.isEmpty) {
                                                            return "Please fill this fiels";
                                                          }
                                                          if (value.length < 6) {
                                                            return 'Phone number must be at least 6 digits';
                                                          }
                                                        },
                                                      ),
                                                    )
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                new Radio(
                                                  activeColor: Colors.amber,
                                                  value: 0,
                                                  groupValue: _radioValue1,
                                                  onChanged: _handleRadioValueChange1,
                                                ),
                                                new Text(
                                                  'Full Car',
                                                  style: new TextStyle(fontSize: 16.0,color: Colors.white),
                                                ),
                                                new Radio(
                                                  activeColor: Colors.amber,
                                                  value: 1,
                                                  groupValue: _radioValue1,
                                                  onChanged: _handleRadioValueChange1,
                                                ),
                                                new Text(
                                                  'By Seat',
                                                  style: new TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.white
                                                  ),
                                                ),

                                              ],
                                            ),

                                            flag == 0?Padding(
                                                padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text("Choose Type",style: TextStyle(color: Colors.white70),),
                                                    DropdownButton(
                                                      style: TextStyle(color: Colors.black),
                                                      value: _currentType,
                                                      items: _dropType,
                                                      onChanged: (value){
                                                        setState(() {
                                                          FocusScope.of(context).requestFocus(new FocusNode());
                                                          _currentType = value;
                                                        }
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                )
                                            ):Padding(
                                              padding: EdgeInsets.only(left: 10,right: 10,top: 20),
                                              child: TextFormField(
                                                maxLength: 1,
                                                controller: _b,
                                                keyboardType: TextInputType.text,
                                                //textAlign: TextAlign.left,
                                                autofocus: false,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold),
                                                decoration: InputDecoration(
                                                  hintText: 'Number of Seats',
                                                  filled: true,
                                                  fillColor: Color(0x55FFFFFF),
                                                  contentPadding: EdgeInsets.fromLTRB(
                                                      20.0, 15.0, 20.0, 15.0),
                                                  border: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(
                                                          15.0)),
                                                ),
                                                validator: (value) {
                                                  if (value.isEmpty) {
                                                    return "Please fill this fiels";
                                                  }
                                                },
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text("Choose School",style: TextStyle(color: Colors.white70),),
                                                  DropdownButton(
                                                    style: TextStyle(color: Colors.black),
                                                    focusColor: Colors.red,
                                                    value: _currentSchools,
                                                    items: _dropSchools,
                                                    onChanged: (value){
                                                      setState(() {
                                                        FocusScope.of(context).requestFocus(new FocusNode());
                                                        _currentSchools = value;
                                                      }
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),


                                            //========================Buttons=================

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
                                                                color: AppColors.mainColor,
                                                                borderRadius: new BorderRadius.circular(50.0),
                                                                border: new Border.all(
                                                                  width: 1.0,
                                                                  color: Colors.white,
                                                                ),
                                                              ),
                                                            ),
                                                            FlatButton(
                                                              child: Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children: <Widget>[
                                                                  Text ("Next", style: TextStyle(color: Colors.white),),
                                                                  SizedBox(width: 5,),
                                                                  Icon(Icons.forward,color: Colors.white,)
                                                                ],
                                                              ),
                                                              onPressed: (){
                                                                if(_loginForm.currentState.validate()){
                                                                  if(flag == 0){
                                                                    Navigator.of(context).push(
                                                                      new MaterialPageRoute(
                                                                        builder: (BuildContext context)=> Phone(),
                                                                      ),
                                                                    );
                                                                  }else{
                                                                    Navigator.of(context).push(
                                                                      new MaterialPageRoute(
                                                                        builder: (BuildContext context)=> RegisterKids(no : _b.text.toString()),
                                                                      ),
                                                                    );
                                                                  }
                                                                }
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