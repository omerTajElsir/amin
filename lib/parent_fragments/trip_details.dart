import 'package:amin/utils/app_colors.dart';
import 'package:flutter/material.dart';

class TripDetails extends StatefulWidget {
  @override
  _TripDetailsState createState() => _TripDetailsState();
}

class _TripDetailsState extends State<TripDetails> {


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
                    child: Text("Trips History",style: TextStyle(fontSize: 20),),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 3,
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
                                                  Icon(Icons.date_range,color: Colors.black54,),
                                                  SizedBox(width: 10,),
                                                  Text("22-12-2019",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                ],
                                              ),
                                              SizedBox(height: 10,),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.timer,color: Colors.black54,),
                                                  SizedBox(width: 10,),
                                                  index!=0?Text("08:18 AM | 43 minuts",style: TextStyle(fontSize: 14,color: Colors.black54),):
                                                  Text("Ongoing ..",style: TextStyle(fontSize: 14,color: Colors.green),)
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
                new Container(
                  padding: EdgeInsets.all(50),
                  width: 400,
                  child: Material(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(50),
                    child: RaisedButton(
                      child: new Text(
                        'Show All',
                        style: new TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      onPressed: (){

                      },
                      color: Colors.transparent,
                      elevation: 0,
                    ),
                  ),)
              ],
            ),
          ),
        )
      ],
    );

  }
}