import 'package:amin/driver_fragments/car_details.dart';
import 'package:amin/driver_fragments/start_trip.dart';
import 'package:amin/pages/phone.dart';
import 'package:amin/parent/notifications.dart';
import 'package:amin/parent_fragments/driver.dart';
import 'package:amin/parent_fragments/students.dart';
import 'package:amin/parent_fragments/trip_details.dart';
import 'package:amin/utils/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ParentMain extends StatefulWidget {
  @override
  _ParentMainState createState() => _ParentMainState();
}

class _ParentMainState extends State<ParentMain> {

  int currentTab = 2;
  Driver driver;
  CarDetails carDetails;
  StartTrip startTrip;
  Students students;
  TripDetails tripDetails;
  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    driver = Driver();
    carDetails = CarDetails();
    startTrip = StartTrip();
    students = Students();
    tripDetails = TripDetails();

    pages = [carDetails,students,driver,students,tripDetails];

    currentPage = driver;
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
        // Here we take the value from the ParentMain object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Amin",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute<void>(builder: (context)=>Notifications()));

            },
          )
        ],
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
              title: Text('Driver'),
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
              Icons.school,
              size: 26,
            ),
            title: Text('Kids & School'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 26,
            ),
            title: Text('Driver'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              size: 26,
            ),
            title: Text('Live Stream'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              size: 26,
            ),
            title: Text('Trips'),
          ),
        ],
      ),

      body: currentPage,
    );
  }
}