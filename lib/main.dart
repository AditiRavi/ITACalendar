import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
//import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class SecondRoute extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  CalendarController _controller;
  SpeedDial buildSpeedDial() {
    return SpeedDial(
      //animatedIcon: AnimatedIcons.add_event,
      //animatedIconTheme: IconThemeData(size: 22.0),

      backgroundColor: Colors.white,
      child: RadiantGradientMask(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      visible: true,
      curve: Curves.bounceIn,
      //overlayColor: Color(0xFF127E8B),
      overlayOpacity: 0.0,
      children: [
        SpeedDialChild(
          child: RadiantGradientMask(
              child: Icon(
                OMIcons.people,
                color: Colors.white,
                key: UniqueKey(),
              )),
          backgroundColor: Colors.white,
          onTap: () => print('General Task'),
          label: 'General Task',
          labelStyle:
          TextStyle(fontSize: 12, color: Color(0xFF43D9C0)),
          labelBackgroundColor: Colors.white,
        ),
        SpeedDialChild(
          child: RadiantGradientMask(
              child: Icon(OMIcons.person, color: Colors.white)),
          backgroundColor: Colors.white,
          onTap: () => print('private task'),
          label: 'Private Task',
          labelStyle:
          TextStyle(fontSize: 12, color: Color(0xFF43D9C0)),
          labelBackgroundColor: Colors.white,
        ),
      ],
    );
  }
  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Color(0xFF3EB3BE),
            Color(0xFF43D9C0),
            // Color(0xFFA1EAE0),
          ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    ' Calendar',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontFamily: 'nunito',
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
//
                    child: TableCalendar(
                      calendarController: _controller,
                      calendarStyle: CalendarStyle(
                        selectedColor: Colors.white,
                        outsideDaysVisible: false,
                        outsideWeekendStyle: TextStyle()
                            .copyWith(color: Colors.blueGrey.shade400),
                        outsideStyle:
                            TextStyle().copyWith(color: Colors.blueGrey[400]),
                        weekdayStyle: TextStyle().copyWith(color: Colors.white),
                        selectedStyle:
                            TextStyle().copyWith(color: Color(0xFF127E8B)),
                        todayStyle: TextStyle().copyWith(color: Colors.white),
                        todayColor: Color(0xFF127E8B),
                        weekendStyle:
                            TextStyle().copyWith(color: Color(0xFF127E8B)),
                        holidayStyle: TextStyle().copyWith(color: Colors.white),
                      ),
                      headerStyle: HeaderStyle(
                        leftChevronIcon:
                            Icon(Icons.chevron_left, color: Colors.white),
                        rightChevronIcon:
                            Icon(Icons.chevron_right, color: Colors.white),
                        titleTextStyle: TextStyle().copyWith(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold),
                        formatButtonTextStyle: TextStyle()
                            .copyWith(color: Color(0xFF127E8B), fontSize: 15.0),
                        formatButtonDecoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      daysOfWeekStyle: DaysOfWeekStyle(
                        weekdayStyle: TextStyle().copyWith(color: Colors.white),
                        weekendStyle:
                            TextStyle().copyWith(color: Color(0xFF127E8B)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 151, 167, 175),
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      )
                    ]),
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          SizedBox(
                            height: 35,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '  Thursday 30, July',
                                  style: TextStyle(
                                      color: Color(0xFFAAABAA), fontSize: 12.5),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'TODAY  ',
                                  style: TextStyle(
                                      color: Color(0xFFAAABAA), fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                            child: Divider(
                              color: Color(0xFFCBCDD2),
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            //height: 60,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    colors: [
                                      Colors.white,
                                      Color(0xFFE5F9F9),
                                      // Color(0xFFA1EAE0),
                                    ]),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(95, 204, 198, 175),
                                    blurRadius: 30,
                                    offset: Offset(0, 10),
                                  )
                                ]),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '09:00 AM',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.brightness_1,
                                      color: Color(0xFF43D9C0),
                                      size: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Remainder',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '10:00 AM',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.brightness_1,
                                      color: Colors.white,
                                      size: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Business meeting   ',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            //height: 60,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    colors: [
                                      Colors.white,
                                      Color(0xFFE5F9F9),
                                      // Color(0xFFA1EAE0),
                                    ]),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(95, 204, 198, 175),
                                    blurRadius: 30,
                                    offset: Offset(0, 10),
                                  )
                                ]),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '11:30 AM',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.brightness_1,
                                      color: Color(0xFF43D9C0),
                                      size: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Remainder',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '12:30 PM',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.brightness_1,
                                      color: Colors.white,
                                      size: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Business meeting   ',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: buildSpeedDial(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//  SpeedDial buildSpeedDial() {
//    return SpeedDial(
//      //animatedIcon: AnimatedIcons.add_event,
//      //animatedIconTheme: IconThemeData(size: 22.0),
//      backgroundColor: Colors.white,
//      child: RadiantGradientMask(
//        child: Icon(
//          Icons.add,
//          color: Colors.white,
//        ),
//      ),
//      onOpen: () => print('OPENING DIAL'),
//      onClose: () => print('DIAL CLOSED'),
//      visible: true,
//      curve: Curves.bounceIn,
//      //overlayColor: Color(0xFF127E8B),
//      overlayOpacity: 0.0,
//      children: [
//        SpeedDialChild(
//          child: RadiantGradientMask(
//              child: Icon(
//            OMIcons.people,
//            color: Colors.white,
//            key: UniqueKey(),
//          )),
//          backgroundColor: Colors.white,
//          onTap: () => print('General Task'),
//          label: 'General Task',
//          labelStyle:
//              TextStyle(fontSize: 12, color: Color(0xFF43D9C0)),
//          labelBackgroundColor: Colors.white,
//        ),
//        SpeedDialChild(
//          child: RadiantGradientMask(
//              child: Icon(OMIcons.permIdentity, color: Colors.white)),
//          backgroundColor: Colors.white,
//          onTap: () => print('private task'),
//          label: 'Private Task',
//          labelStyle:
//              TextStyle(fontSize: 12, color: Color(0xFF43D9C0)),
//          labelBackgroundColor: Colors.white,
//        ),
//      ],
//    );
//  }

  DateTime x = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String month = x.month.toString();
    String weekday = x.weekday.toString();
    int day = x.day.toInt();
    switch (month) {
      case "1":
        {
          month = "January";
          break;
        }
      case "2":
        {
          month = "February";
          break;
        }
      case "3":
        {
          month = "March";
          break;
        }
      case "4":
        {
          month = "April";
          break;
        }
      case "5":
        {
          month = "May";
          break;
        }
      case "6":
        {
          month = "June";
          break;
        }
      case "7":
        {
          month = "July";
          break;
        }
      case "8":
        {
          month = "August";
          break;
        }
      case "9":
        {
          month = "September";
          break;
        }
      case "10":
        {
          month = "October";
          break;
        }
      case "11":
        {
          month = "November";
          break;
        }
      case "12":
        {
          month = "December";
          break;
        }
    }
    switch (weekday) {
      case "1":
        {
          weekday = "Monday";
          break;
        }
      case "2":
        {
          weekday = "Tuesday";
          break;
        }
      case "3":
        {
          weekday = "Wednesday";
          break;
        }
      case "4":
        {
          weekday = "Thursday";
          break;
        }
      case "5":
        {
          weekday = "Friday";
          break;
        }
      case "6":
        {
          weekday = "Saturday";
          break;
        }
      case "7":
        {
          weekday = "Sunday";
          break;
        }
    }
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
        //  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(175)),
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Color(0xFF3EB3BE),
            Color(0xFF43D9C0),
            Color(0xFFA1EAE0),
          ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 45.0,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    day.toString() + ' ' + month + ',',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontFamily: 'nunito'),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        weekday,
                        style: TextStyle(
                            color: Colors.white,//Color(0xFF127E8B),
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'nunito'),
                      ),
                      IconButton(

                           icon: Icon(
                              OMIcons.today,
                              color: Color(0xFFA1EAE0),
                              size: 36.0,
                             ),
                         onPressed: () {
                               Navigator.push(context,
                             MaterialPageRoute(builder: (context) => SecondRoute()));
                                },
                        ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          //topLeft: Radius.circular(-50),
                          topRight: Radius.circular(50),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 151, 167, 2),
                          blurRadius: 20,
                          offset: Offset(1, 3),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.only(top: 15,bottom: 5,left: 15,right: 15),
                    child: ListView(
                  children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(
                        height: 0,
                      ),
                      Text(
                        ' Upcoming Plans (3)',
                        style: TextStyle(
                            color: Color(0xFFAAABAA), fontSize: 13,fontFamily: 'nunito'),
                      ),
                      SizedBox(
                        height: 10,
                        child: Divider(
                          color: Color(0xFF909190),
                        ),
                      ),
                      SizedBox(height:5),
                      Container(
                        //height: 60,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                colors: [
                                  Colors.white,
                                  Color(0xFFE5F9F9),
                                  // Color(0xFFA1EAE0),
                                ]),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(95, 204, 198, 175),
                                blurRadius: 30,
                                offset: Offset(0, 10),
                              )
                            ]),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  '11:30 AM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.brightness_1,
                                  color: Color(0xFF43D9C0),
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Remainder',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  '12:30 PM',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.brightness_1,
                                  color: Colors.white,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur.',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        //height: 60,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                colors: [
                                  Colors.white,
                                  Color(0xFFE5F9F9),
                                  // Color(0xFFA1EAE0),
                                ]),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(95, 204, 198, 175),
                                blurRadius: 30,
                                offset: Offset(0, 10),
                              )
                            ]),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  '01:30 PM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.brightness_1,
                                  color: Color(0xFF43D9C0),
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Remainder',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  '02:30 PM',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.brightness_1,
                                  color: Colors.white,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur.',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        //height: 60,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                colors: [
                                  Colors.white,
                                  Color(0xFFE5F9F9),
                                  // Color(0xFFA1EAE0),
                                ]),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(95, 204, 198, 175),
                                blurRadius: 30,
                                offset: Offset(0, 10),
                              )
                            ]),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  '05:00 PM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.brightness_1,
                                  color: Color(0xFF43D9C0),
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Remainder',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  '07:00 PM',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.brightness_1,
                                  color: Colors.white,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur.',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Club Events',
                        style: TextStyle(
                            color: Color(0xFFAAABAA), fontSize: 13,fontFamily: 'nunito'),
                      ),
                      SizedBox(
                        height: 10,
                        child: Divider(
                          color: Color(0xFF909190),
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        //height: 60,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                colors: [
                                  Colors.white,
                                  Color(0xFFE5F9F9),
                                  // Color(0xFFA1EAE0),
                                ]),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(95, 204, 198, 175),
                                blurRadius: 30,
                                offset: Offset(0, 10),
                              )
                            ]),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  '3 August ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.brightness_1,
                                  color: Color(0xFF3EB3BE),
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Remainder',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  ' Monday',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.brightness_1,
                                  color: Colors.white,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '  Lorem ipsum dolor sit amet, consectetur.',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ],
                ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
//      bottomNavigationBar: BottomAppBar(
//        elevation: 5,
//        color: Colors.white,
//        child: Row(
//          mainAxisSize: MainAxisSize.max,
//          mainAxisAlignment: MainAxisAlignment.spaceAround,
//          children: <Widget>[
//            IconButton(
//              icon: RadiantGradientMask(
//                child: Icon(
//                  OMIcons.bookmarkBorder,
//                  color: Colors.white,
//                  size: 30.0,
//                ),
//              ),
//              onPressed: () {
//                x = DateTime.now();
//                setState(() {});
//              },
//            ),
//            IconButton(
//              icon: RadiantGradientMask(
//                child: Icon(
//                  Icons.chevron_left,
//                  color: Colors.white,
//                  size: 35.0,
//                ),
//              ),
//              onPressed: () {
//                x = x.add(Duration(days: -1, hours: 0, minutes: 0));
//                setState(() {});
//              },
//            ),
//            IconButton(
//              icon: RadiantGradientMask(
//                child: Icon(
//                  Icons.chevron_right,
//                  color: Colors.white,
//                  size: 35.0,
//                ),
//              ),
//              onPressed: () {
//                x = x.add(Duration(days: 1, hours: 0, minutes: 0));
//                setState(() {});
//              },
//            ),
//            IconButton(
//              icon: RadiantGradientMask(
//                child: Icon(
//                  OMIcons.calendarToday,
//                  color: Colors.white,
//                  size: 30.0,
//                ),
//              ),
//              onPressed: () {
//                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondRoute()));
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (context) => SecondRoute()));
//              },
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: buildSpeedDial(),
    );
  }
}

class RadiantGradientMask extends StatelessWidget {
  RadiantGradientMask({this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) =>
          LinearGradient(begin: Alignment.topLeft, colors: [
        Color(0xFF3EB3BE),
        Color(0xFF43D9C0),
            Color(0xFFA1EAE0),


      ]).createShader(bounds),
      child: child,
    );
  }
}
