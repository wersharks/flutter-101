import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  CalendarController controller = CalendarController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: myclass(),
        ),
      ),
    );
  }
}

class myclass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(icon: Icon(Icons.clear), onPressed: null),
            ],
          ),
          Text(
            'Create',
            style: TextStyle(fontSize: 40),
          ),
          Text(
            'New Task',
            style: TextStyle(fontSize: 40),
          ),
          Spacer(),
          Container(
            height: size.height * 0.6,
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40))),
            child: Column(
              children: [
                Form(
                  child: TextFormField(
                    style: TextStyle(fontSize: 30),
                    decoration: InputDecoration(
                      hintText: 'enter your new task',
                    ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.calendar_today_outlined),
                        onPressed: null),
                    Text('ddddd')
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.calendar_today_outlined),
                        onPressed: null),
                    Text('ddddd')
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
