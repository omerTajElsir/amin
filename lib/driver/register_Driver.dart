import 'dart:ui';

import 'package:amin/pages/phone.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class RegisterDriver extends StatefulWidget {
  _RegisterDriverState createState() => _RegisterDriverState();
}

class _RegisterDriverState extends State<  RegisterDriver> {

  int currStep = 0;
  static var _focusNode = new FocusNode();
  GlobalKey<FormState> _formKey1 = new GlobalKey<FormState>();
  GlobalKey<FormState> _formKey2 = new GlobalKey<FormState>();
  GlobalKey<FormState> _formKey3 = new GlobalKey<FormState>();
  static TextEditingController _driverName = new TextEditingController();
  static TextEditingController _phone = new TextEditingController();
  static TextEditingController _nationality = new TextEditingController();
  static TextEditingController _DOB = new TextEditingController();
  static TextEditingController _iqama = new TextEditingController();
  static TextEditingController _expiryDate = new TextEditingController();
  static TextEditingController _licenseNo = new TextEditingController();
  static TextEditingController _ownerName = new TextEditingController();
  static TextEditingController _ownerID = new TextEditingController();
  static TextEditingController _plateNo = new TextEditingController();
  static TextEditingController _carMake = new TextEditingController();
  static TextEditingController _model = new TextEditingController();
  static TextEditingController _year = new TextEditingController();
  static TextEditingController _capacity = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
      print('Has focus: $_focusNode.hasFocus');
    });
  }

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
    List<Step> steps = [
      new Step(
          title: const Text('Profile Info',style: TextStyle(color: Colors.white),),
          //subtitle: const Text('Enter your name'),
          isActive: true,
          //state: StepState.error,
          state: StepState.indexed,
          content: new Form(
            key: _formKey1,
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
                TextFormField(
                  controller: _phone,
                  keyboardType: TextInputType.number,
                  //textAlign: TextAlign.left,
                  autofocus: false,
                  style: TextStyle(
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
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
                TextFormField(
                  controller: _nationality,
                  keyboardType: TextInputType.text,
                  //textAlign: TextAlign.left,
                  autofocus: false,
                  style: TextStyle(
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: 'Nationality',
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
                TextFormField(
                  controller: _DOB,
                  keyboardType: TextInputType.text,
                  //textAlign: TextAlign.left,
                  autofocus: false,
                  style: TextStyle(
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: 'DOB',
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

                TextFormField(
                  controller: _iqama,
                  keyboardType: TextInputType.text,
                  //textAlign: TextAlign.left,
                  autofocus: false,
                  style: TextStyle(
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: 'Iqama / Nationality NO.',
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

                GestureDetector(
                  child: TextFormField(
                    /*onTap: (){
                      DatePicker.showDatePicker(context,
                          showTitleActions: true,
                          minTime: DateTime(2018, 3, 5),
                          maxTime: DateTime(2019, 6, 7), onChanged: (date) {
                            print('change $date');
                          }, onConfirm: (date) {
                            print('confirm $date');
                          }, currentTime: DateTime.now(), locale: LocaleType.zh);
                    },*/
                    controller: _expiryDate,
                    keyboardType: TextInputType.text,
                    //textAlign: TextAlign.left,
                    autofocus: false,
                    style: TextStyle(
                        fontWeight: FontWeight.bold),
                    //enabled: false,
                    decoration: InputDecoration(
                      hintText: 'Expiry Date',
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

              ],
            ),
          )
      ),
      new Step(
          title: const Text('Car Registration',style: TextStyle(color: Colors.white)),
          //subtitle: const Text('Subtitle'),
          isActive: true,
          //state: StepState.editing,
          state: StepState.indexed,
          content: new Form(
            key: _formKey2,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _licenseNo,
                  keyboardType: TextInputType.number,
                  //textAlign: TextAlign.left,
                  autofocus: false,
                  style: TextStyle(
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: 'License Number',
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
                TextFormField(
                  controller: _ownerName,
                  keyboardType: TextInputType.text,
                  //textAlign: TextAlign.left,
                  autofocus: false,
                  style: TextStyle(
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: 'Car Owner Name',
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
                TextFormField(
                  controller: _ownerID,
                  keyboardType: TextInputType.text,
                  //textAlign: TextAlign.left,
                  autofocus: false,
                  style: TextStyle(
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: 'Owner National ID',
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


              ],
            ),
          )
      ),
      new Step(
          title: const Text('Car Details',style: TextStyle(color: Colors.white)),
          //subtitle: const Text('Subtitle'),
          isActive: true,
          //state: StepState.editing,
          state: StepState.indexed,
          content: new Form(
            key: _formKey3,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _plateNo,
                  keyboardType: TextInputType.number,
                  //textAlign: TextAlign.left,
                  autofocus: false,
                  style: TextStyle(
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: 'Plate Number',
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
                TextFormField(
                  controller: _carMake,
                  keyboardType: TextInputType.text,
                  //textAlign: TextAlign.left,
                  autofocus: false,
                  style: TextStyle(
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: 'Make of Car',
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
                TextFormField(
                  controller: _model,
                  keyboardType: TextInputType.text,
                  //textAlign: TextAlign.left,
                  autofocus: false,
                  style: TextStyle(
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: 'Model',
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
                TextFormField(
                  controller: _year,
                  keyboardType: TextInputType.text,
                  //textAlign: TextAlign.left,
                  autofocus: false,
                  style: TextStyle(
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: 'Year of Manu.',
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
                TextFormField(
                  controller: _capacity,
                  keyboardType: TextInputType.number,
                  //textAlign: TextAlign.left,
                  autofocus: false,
                  style: TextStyle(
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: 'Capacity',
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


              ],
            ),
          )
      ),

    ];

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