import 'package:amin/fragments/start_trip.dart';
import 'package:amin/fragments/trip_details.dart';
import 'package:amin/pages/phone.dart';
import 'package:amin/utils/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:amin/fragments/notifications.dart';
import 'package:amin/fragments/car_details.dart';
import 'package:amin/fragments/students.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int currentTab = 1;

  Notifications notifications;
  CarDetails carDetails;
  StartTrip startTrip;
  Students students;
  TripDetails tripDetails;

  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    notifications = Notifications();
    carDetails = CarDetails();
    startTrip = StartTrip();
    students = Students();
    tripDetails = TripDetails();

    pages = [carDetails,students,startTrip,tripDetails,notifications];

    currentPage = startTrip;
    super.initState();
  }
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
        backgroundColor: Colors.white,
        elevation: 3,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Amin",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: AppColors.mainColor),
              accountEmail: Text('Email@account.com'),
              accountName: Text('Account Name'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/face.jpg"),
                ),
              ),
            ),
            // body
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: Text('Home Page'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('My account'),
              onTap: () {
              },
            ),

            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              onTap: () {
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('About'),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.power_settings_new,color: Colors.red,),
              title: Text('Logout',),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute<void>(builder: (context)=>Phone()));
              },
            ),
          ],
        ),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 1.5 : 0,
      ),

      bottomNavigationBar: BottomNavigationBar(
        //showUnselectedLabels: true,
        currentIndex: currentTab,
        fixedColor: AppColors.mainColor,
        elevation: 5,
        unselectedItemColor: Colors.black38,
        //selectedItemColor: Color(0xFF1f617e),
        onTap: (int index) {
          setState(() {
            currentTab = index;
            currentPage = pages[index];
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.directions_car,
              size: 26,
            ),
            title: Text('Car Details'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 26,
            ),
            title: Text('Students'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.open_in_new,
              size: 26,
            ),
            title: Text('Start/End'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
              size: 26,
            ),
            title: Text('Trip Details'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_active,
              size: 26,
            ),
            title: Text('Notifications'),
          ),
        ],
      ),

      body: currentPage,
    );
  }
}