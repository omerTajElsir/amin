import 'package:flutter/material.dart';

class StartTrip extends StatefulWidget {
  @override
  _StartTripState createState() => _StartTripState();
}

class _StartTripState extends State<StartTrip> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Center(child: Text("Start/End Trip"),);

  }
}