import 'package:amin/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Driver extends StatefulWidget {
  @override
  _DriverState createState() => _DriverState();
}

class _DriverState extends State<Driver> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Column(
      //scrollDirection: Axis.vertical,
      children: <Widget>[
        Expanded(
          flex: 9,
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("All Drivers",style: TextStyle(fontSize: 20),),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index ) {
                        return GestureDetector(
                            onTap: (){

                            },
                            child : Column(
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
                                    child: Row(
                                      children: <Widget>[

                                        CircleAvatar(
                                          maxRadius: 35,
                                          backgroundImage: AssetImage("assets/face.jpg"),
                                        ),

                                        SizedBox(width: 20,),

                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text("Omer Taj Elsir",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                              SizedBox(height: 10,),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.person,color: Colors.black54,),
                                                  SizedBox(width: 10,),
                                                  Text("Male - 43 years old",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                ],
                                              ),
                                              //SizedBox(height: 10,),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.directions_car,color: Colors.black54,),
                                                  SizedBox(width: 10,),
                                                  Text("Toyota Rav4 - 2017",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                ),
                                Container(
                                  height:.5,
                                  margin: EdgeInsets.only(left: 20,right: 20),
                                  color: Colors.grey.shade400,
                                )
                              ],
                            )

                        );
                      }

                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}