import 'package:flutter/material.dart';
import 'package:weather_station/components/my_app_bar.dart';
import 'package:weather_station/components/my_drawer.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const MyAppBar(
        title: 'Information',
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ein Projekt von", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("Hauke Michael Gers"),
            Text("Arne Oetken"),
            Text("Fabien Sam Azamat"),
            Text("Jannik Neuhaus"),
            Text("Stanislav Kundik"),
            Text("Hannes Hesping"),
            Text("Lucas Ramirez Canete"),
            Text("Max Raese"),
            SizedBox(height: 10),
            Text("Im Auftrag von", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("Prof. Dr. Lübke"),
            Text("und"),
            Text("Jan Oliver Schöwerling")
          ],
        ),
      ),
    );
  }
}
