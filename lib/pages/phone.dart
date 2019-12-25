import 'package:amin/pages/verify.dart';
import 'package:amin/utils/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Phone extends StatefulWidget {
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {


  TextEditingController textEditingController = new TextEditingController();
  final _PhoneForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;


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
              Center(
                child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Form(
                      key: _PhoneForm,
                      child: TextFormField(
                        controller: textEditingController,
                        keyboardType: TextInputType.number,
                        //textAlign: TextAlign.left,
                        autofocus: false,
                        style: TextStyle(
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          prefixIcon: Container(
                            margin: EdgeInsets.only(
                                left: 20, right: 20),
                            width: 30,
                            child: Image.asset(
                                "assets/indiaflag.png"),
                          ),
                          suffixIcon: IconButton(icon: Icon(
                            Icons.forward,
                            color: AppColors.mainColor,),
                            onPressed: () {
                              /*Navigator.of(context).push(
                                    new MaterialPageRoute(
                                      builder: (BuildContext context)=>new VerifyScreen(),
                                    ),
                                  );*/
                              if (_PhoneForm.currentState
                                  .validate()) {

                                Navigator.of(context).pushReplacement(
                                  new MaterialPageRoute(
                                    builder: (BuildContext context)=>new VerifyScreen(),
                                  ),
                                );

                              }
                            },),
                          hintText: 'Phone',
                          filled: true,
                          fillColor: Color(0xBBFFFFFF),
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
              )


            ],
          )
        ],
      ),

    );




  }
}