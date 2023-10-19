//
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
//
import 'package:weather_station/components/my_app_bar.dart';
import 'package:weather_station/components/my_drawer.dart';
import 'package:weather_station/components/my_floating_action_button.dart';

class AddSensor extends StatefulWidget {
  const AddSensor({super.key});

  @override
  State<AddSensor> createState() => _AddSensorState();
}

class _AddSensorState extends State<AddSensor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const MyAppBar(title: 'Add New Sensor'),
      body: foundDevices(),
      floatingActionButton: MyFloatingActionButton(
        onPressed: () =>
            FlutterBluePlus.startScan(timeout: const Duration(seconds: 15)),
        icon: Icons.search,
      ),
      drawer: const MyDrawer(),
    );
  }

  String getName(String name) {
    if (name == '') {
      return 'No Name';
    } else {
      return name;
    }
  }

  SingleChildScrollView foundDevices() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          StreamBuilder<List<ScanResult>>(
            stream: FlutterBluePlus.scanResults,
            initialData: const [],
            builder: (c, snapshot) => Column(
              children: (snapshot.data ?? [])
                  .map(
                    (r) => ListTile(
                      title: Text(getName(r.device.platformName)),
                      subtitle: Text(r.device.remoteId.toString()),
                      trailing: Text(r.rssi.toString()),
                      onTap: () {
                        r.device.connect(
                          timeout: const Duration(seconds: 30),
                          autoConnect: true,
                        ); //provider flutter
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
