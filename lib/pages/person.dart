import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/user_notification.dart';

import 'notification_widget.dart';

class Person extends StatelessWidget {
  const Person({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Notifications"),

    ),
    body: Form(
  child: Container(


  child: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
  // Padding(
  //
  // // padding: const EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 0.0),
  // // child: Text('Notifications', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
  // // ),

  for(UserNotification notification in notifications) NotificationWidget(notification: notification)
  ],
  )
  ),
    ),
  );
  }
  }