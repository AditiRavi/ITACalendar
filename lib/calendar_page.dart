import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SecondRoute extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  CalendarController _controller;

  @override
  void initState(){
    super.initState();
    _controller =   CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableCalendar(calendarController: _controller,),
          ],
        ),
      ),
    );
  }
}



