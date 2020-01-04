import 'package:amin/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        //scrollDirection: Axis.vertical,
        children: <Widget>[
          Expanded(
            flex: 9,
            child: Container(

              child: ListView(
                children: <Widget>[
                  GestureDetector(
                      onTap: (){

                      },
                      child : Container(
                          padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
                          color: Colors.cyan.shade50,
                          child: Row(
                            children: <Widget>[

                              CircleAvatar(
                                maxRadius: 35,
                                backgroundImage: AssetImage("assets/face.jpg"),
                                backgroundColor: Colors.grey.shade200,

                              ),

                              SizedBox(width: 20,),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Omer Taj Elsir",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(height: 10,),
                                    Text("Trip has been canceled",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                  ],
                                ),
                              ),

                              Container(
                                  width: 60,
                                  padding: EdgeInsets.only(bottom: 40),
                                  child: Column(
                                    children: <Widget>[
                                      CircleAvatar(
                                        maxRadius: 12,
                                        backgroundColor: Colors.orange,
                                        child: Padding(padding: EdgeInsets.all(3),
                                          child: Center(child: Text("1",style: TextStyle(color: Colors.white,fontSize: 14),),),
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text("1:50 pm",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                    ],
                                  )
                              )
                            ],
                          )
                      )

                  ),

                  GestureDetector(
                      onTap: (){

                      },
                      child : Container(
                          padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
                          color: Colors.cyan.shade50,
                          child: Row(
                            children: <Widget>[

                              CircleAvatar(
                                maxRadius: 35,
                                backgroundColor: Colors.grey.shade300,
                                child: Icon(
                                  Icons.person,
                                  color:AppColors.mainColor,
                                  size: 45,
                                ),
                              ),

                              SizedBox(width: 20,),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Omer Taj Elsir",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(height: 10,),
                                    Text("Trip has been canceled",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                  ],
                                ),
                              ),

                              Container(
                                  width: 60,
                                  padding: EdgeInsets.only(bottom: 40),
                                  child: Column(
                                    children: <Widget>[
                                      CircleAvatar(
                                        maxRadius: 12,
                                        backgroundColor: Colors.orange,
                                        child: Padding(padding: EdgeInsets.all(3),
                                          child: Center(child: Text("1",style: TextStyle(color: Colors.white,fontSize: 14),),),
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text("1:50 pm",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                    ],
                                  )
                              )
                            ],
                          )
                      )

                  ),

                  GestureDetector(
                      onTap: (){

                      },
                      child : Container(
                          padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),

                          child: Row(
                            children: <Widget>[

                              CircleAvatar(
                                maxRadius: 35,
                                backgroundColor: Colors.grey.shade300,
                                child: Icon(
                                  Icons.person,
                                  color:AppColors.mainColor,
                                  size: 45,
                                ),
                              ),

                              SizedBox(width: 20,),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Omer Taj Elsir",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(height: 10,),
                                    Text("Trip has been canceled",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                  ],
                                ),
                              ),


                            ],
                          )
                      )

                  ),

                  GestureDetector(
                      onTap: (){

                      },
                      child : Container(
                          padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),

                          child: Row(
                            children: <Widget>[

                              CircleAvatar(
                                maxRadius: 35,
                                backgroundColor: Colors.grey.shade300,
                                child: Icon(
                                  Icons.person,
                                  color:AppColors.mainColor,
                                  size: 45,
                                ),
                              ),

                              SizedBox(width: 20,),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Omer Taj Elsir",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(height: 10,),
                                    Text("Trip has been canceled",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                  ],
                                ),
                              ),
                            ],
                          )
                      )

                  ),

                  GestureDetector(
                      onTap: (){

                      },
                      child : Container(
                          padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),

                          child: Row(
                            children: <Widget>[

                              CircleAvatar(
                                maxRadius: 35,
                                backgroundColor: Colors.grey.shade300,
                                child: Icon(
                                  Icons.person,
                                  color:AppColors.mainColor,
                                  size: 45,
                                ),
                              ),

                              SizedBox(width: 20,),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Omer Taj Elsir",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(height: 10,),
                                    Text("Trip has been canceled",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                  ],
                                ),
                              ),


                            ],
                          )
                      )

                  ),

                  GestureDetector(
                      onTap: (){

                      },
                      child : Container(
                          padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),

                          child: Row(
                            children: <Widget>[

                              CircleAvatar(
                                maxRadius: 35,
                                backgroundColor: Colors.grey.shade300,
                                child: Icon(
                                  Icons.person,
                                  color:AppColors.mainColor,
                                  size: 45,
                                ),
                              ),

                              SizedBox(width: 20,),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Omer Taj Elsir",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(height: 10,),
                                    Text("Trip has been canceled",style: TextStyle(fontSize: 14,color: Colors.black54),),
                                  ],
                                ),
                              ),


                            ],
                          )
                      )

                  ),



                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}