import 'package:flutter/material.dart';
//pages
import 'package:weather_station/pages/home_page.dart';
import 'package:weather_station/pages/add_sensor.dart';
import 'package:weather_station/pages/information.dart';
import 'package:weather_station/pages/settings.dart';
//themes
import 'package:weather_station/themes/dark_mode.dart';
import 'package:weather_station/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //root of application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: lightMode,
      darkTheme: darkMode,
      routes: {
        //list all pages of the app here
        '/home_page': (context) => const HomePage(),
        '/add_sensor': (context) => const AddSensor(),
        '/information': (context) => const Information(),
        '/settings': (context) => const Settings(),
      },
    );
  }
}
//TODO
//use hive to save a list of sensors
//use provider to have the same list of sensors on all pages
//add bluetooth device to sensor class
//create functions to automatically connect to devices

