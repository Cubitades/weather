import 'package:flutter/material.dart';
import 'package:weather_station/components/my_app_bar.dart';
import 'package:weather_station/components/my_drawer.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const MyAppBar(title: 'Settings'),
      drawer: const MyDrawer(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Settings")],
        ),
      ),
    );
  }
}
