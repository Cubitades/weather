import 'package:flutter/material.dart';
import 'package:weather_station/models/my_sensors.dart';
import 'package:weather_station/components/my_drawer.dart';
import 'package:weather_station/components/my_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Sensor> sensors = [];

  void _getInitialInfo() {
    sensors = Sensor.getSensorList();
  }

/*
  addNewSensor(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            "Add new sensor",
          ),
          content: const Text("Where is the sensor located?"),
          actions: [
            const TextField(
              decoration: InputDecoration(hintText: "Location"),
            ),
            Row(
              children: [
                TextButton(
                  child: const Text("OK"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("Cancel"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
*/
  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: const MyAppBar(
        title: 'My Sensors',
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: sensorList(sensors),
      drawer: const MyDrawer(),
    );
  }

  Widget sensorList(List<Sensor> sensors) {
    if (sensors.isEmpty) {
      return const Center(
        child: Text(
          "No sensors added yet",
          style: TextStyle(fontSize: 20),
        ),
      );
    } else {
      return ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: sensors.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  width: 500,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              sensors[index].name,
                              style: const TextStyle(fontSize: 25),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.battery_6_bar_outlined,
                              size: 25,
                            ),
                            const Icon(
                              Icons.bluetooth_connected,
                              size: 25,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              const Icon(
                                Icons.speed_outlined,
                                size: 60,
                                color: Colors.greenAccent,
                              ),
                              //const Text("Pressure"),
                              const SizedBox(height: 10),
                              Text(
                                "${sensors[index].pressure} hPa",
                                style: const TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Icon(
                                Icons.thermostat_outlined,
                                size: 60,
                                color: Colors.redAccent,
                              ),
                              //const Text("Temperature"),
                              const SizedBox(height: 10),
                              Text(
                                "${sensors[index].temperature} °C",
                                style: const TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Icon(
                                Icons.foggy,
                                size: 60,
                                color: Colors.lightBlueAccent,
                              ),
                              //const Text("Humidity"),
                              const SizedBox(height: 10),
                              Text(
                                "${sensors[index].humidity} %",
                                style: const TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "last seen: ${sensors[index].lastSeen}",
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      );
    }
  }
}
