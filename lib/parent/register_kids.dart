import 'dart:ui';

import 'package:amin/driver/driver_main.dart';
import 'package:amin/pages/phone.dart';
import 'package:amin/parent/parent_main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class RegisterKids extends StatefulWidget {
  final String no;
  RegisterKids({this.no});
  _RegisterKidsState createState() => _RegisterKidsState();
}

class _RegisterKidsState extends State<  RegisterKids> {

  int currStep = 0;
  static var _focusNode = new FocusNode();
  static TextEditingController _driverName = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
      print('Has focus: $_focusNode.hasFocus');
    });
    _dropType = getDropType(types);
    _currentType = _dropType[0].value;
  }
  String _currentType;
  List types  = ["Primery","Secondery","High School"];
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

  String dateSelected = "Select Time";

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  static int _radioValue1 = 0;

  String gender = "male";
  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;

      switch (_radioValue1) {
        case 0:
          gender = "male";
          break;
        case 1:
          gender = "female";
          break;

      }
    });
  }
  @override
  Widget build(BuildContext context) {
    int no = int.parse(widget.no);
    List<Step> steps = [];
    for(int i=1;i<=no;i++){
      Step s = new Step(
          title:  Text('Kid No. $i',style: TextStyle(color: Colors.white),),
          //subtitle: const Text('Enter your name'),
          isActive: true,
          //state: StepState.error,
          state: StepState.indexed,
          content: new Form(
            child: Column(

              children: <Widget>[
                TextFormField(
                  controller: _driverName,
                  keyboardType: TextInputType.text,
                  //textAlign: TextAlign.left,
                  autofocus: false,
                  style: TextStyle(
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: 'Driver Name',
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
                      'Male',
                      style: new TextStyle(fontSize: 16.0,color: Colors.white),
                    ),
                    new Radio(
                      activeColor: Colors.amber,
                      value: 1,
                      groupValue: _radioValue1,
                      onChanged: _handleRadioValueChange1,
                    ),
                    new Text(
                      'Female',
                      style: new TextStyle(
                          fontSize: 16.0,
                          color: Colors.white
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: <Widget>[
                    Text("Pickup Time : ",style: TextStyle(fontSize: 14,color: Colors.white70),),
                    FlatButton(
                      onPressed: (){
                        DatePicker.showDatePicker(context,
                            showTitleActions: true,
                            minTime: DateTime(2018, 3, 5),
                            maxTime: DateTime(2019, 6, 7), onChanged: (date) {

                              print('change $date');
                            }, onConfirm: (date) {
                              print('confirm $date');
                              setState(() {
                                dateSelected = date.day.toString();
                              });
                            }, currentTime: DateTime.now(), locale: LocaleType.en);
                      },
                      child: Container(
                        width: 100,
                        padding: EdgeInsets.only(right: 0,top: 0),
                        child: Text(dateSelected,style: TextStyle(fontSize: 16,color: Colors.white),),

                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Pickup Time(School) : ",style: TextStyle(fontSize: 14,color: Colors.white70),),
                    FlatButton(
                      onPressed: (){
                        DatePicker.showDatePicker(context,
                            showTitleActions: true,
                            minTime: DateTime(2018, 3, 5),
                            maxTime: DateTime(2019, 6, 7), onChanged: (date) {

                              print('change $date');
                            }, onConfirm: (date) {
                              print('confirm $date');
                              setState(() {
                                dateSelected = date.day.toString();
                              });
                            }, currentTime: DateTime.now(), locale: LocaleType.en);
                      },
                      child: Container(
                        width: 100,
                        padding: EdgeInsets.only(right: 0,top: 0),
                        child: Text(dateSelected,style: TextStyle(fontSize: 16,color: Colors.white),),

                      ),
                    ),
                  ],
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Choose Type",style: TextStyle(color: Colors.white70),),
                    DropdownButton(
                      style: TextStyle(color: Colors.white),
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

              ],
            ),
          )
      );
      steps.add(s);
    }




    // TODO: implement build
    return new Material(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new ExactAssetImage('assets/schoolpickup.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: new BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
              child: new Container(
                decoration: new BoxDecoration(color: Colors.black.withOpacity(0.6)),
              ),
            ),
          ),

          Container(
              child: new Form(
                child: new ListView(children: <Widget>[
                  new Stepper(
                    steps: steps,
                    type: StepperType.vertical,
                    currentStep: this.currStep,
                    onStepContinue: () {
                      setState(() {
                        if (currStep < steps.length - 1) {
                          currStep = currStep + 1;
                        } else {
                          currStep = 0;
                        }
                      });
                    },
                    onStepCancel: () {
                      setState(() {
                        if (currStep > 0) {
                          currStep = currStep - 1;
                        } else {
                          currStep = 0;
                        }
                      });
                    },
                    onStepTapped: (step) {
                      setState(() {
                        currStep = step;
                      });
                    },
                  ),
                  new Padding(padding: EdgeInsets.all(50),
                    child: Material(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50),
                      child: RaisedButton(
                        child: new Text(
                          'Save details',
                          style: new TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        onPressed: (){
                          Navigator.of(context).push(
                            new MaterialPageRoute(
                              builder: (BuildContext context)=> ParentMain(),
                            ),
                          );
                        },
                        color: Colors.transparent,
                        elevation: 0,
                      ),
                    ),)
                ]),
              )
          ),
        ],
      ),
    );
  }

}