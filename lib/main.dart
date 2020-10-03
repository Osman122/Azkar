import 'package:azkar/AzkarBody.dart';
import 'package:azkar/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'body.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'dart:core';
import 'package:audioplayers/audio_cache.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  void initState() {
    // TODO: implement initState

    super.initState();

    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    var initializationSettingsAndroid =
    new AndroidInitializationSettings('@mipmap/ic_launcher');

    var initializationSettingsIOS = new IOSInitializationSettings(
        onDidReceiveLocalNotification: onDidRecieveLocalNotification);

    var initializationSettings = new InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOS);

    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: onSelectNotification);

    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");

        displayNotification(message);
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");

        displayNotification(message);
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
        displayNotification(message);
//        _navigateToItemDetail(message);
      }, 

    );
    _firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(alert: true, badge: true, sound: true));

    _firebaseMessaging.getToken().then((String token) async {
      assert(token != null);
      print(token);

    });
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk:mm:ss').format(now);
    while(formattedDate=="16:43:00") {
      print(formattedDate);
    }
    _showDailyAtTime();

//onDidRecieveLocalNotification(0, "osos"  , "osman", "the best");



  }

  Future onSelectNotification(String payload) async {
    if (payload != null) {
      debugPrint('notification payload: ' + payload);

    }
  }
  Future onDidRecieveLocalNotification(
      int id, String title, String body, String payload) async {
  var  androidPlatformChannelSpecifics = new AndroidNotificationDetails(
    'channelid', 'flutterfcm', 'your channel description',
    importance: Importance.Max, priority: Priority.High);
    var iOSPlatformChannelSpecifics = new IOSNotificationDetails();
    var platformChannelSpecifics = new NotificationDetails(
    androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(id,title,body,  platformChannelSpecifics, payload:payload);

  }
  Future displayNotification(Map<String, dynamic> message) async {
    var androidPlatformChannelSpecifics = new AndroidNotificationDetails(
        'channelid', 'flutterfcm', 'your channel description',
        importance: Importance.Max, priority: Priority.High);
    var iOSPlatformChannelSpecifics = new IOSNotificationDetails();
    var platformChannelSpecifics = new NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
       0,
      message['data']['message'].toString(),
      message['notification']['body'],
      platformChannelSpecifics,
      payload: message['data']['message'],
    );
  }
  Future<void> _showDailyAtTime() async {
    var time = Time(1, 30, 0);
    print('yarab');

    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'repeatDailyAtTime channel id',
        'repeatDailyAtTime channel name',
        'repeatDailyAtTime description');
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.showDailyAtTime(
        0,
        'show daily title',
        'Daily notification shown at approximately',
        time,
        platformChannelSpecifics);


  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),



    );
  }}