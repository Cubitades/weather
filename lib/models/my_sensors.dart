import 'dart:math';
//import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class Sensor {
  String name;
  DateTime? lastSeen;
  bool? connected;
  String? temperature;
  int? humidity;
  int? pressure;
  int? batterylevel;

  //device information
  final int batteryserviceUUID = 0x180F;
  final int batterylevelcharacteristicUUID = 0x2A19;
  //enviromental information
  final int enviromentalserviceUUID = 0x181A;
  final int tempcharacteristicUUID = 0x2A1F;
  final int humidcharacteristicUUID = 0x2A6F;
  final int presscharacteristicUUID = 0x2A6D;

  //BluetoothDevice mydevice;

  Sensor({
    required this.name,
    required this.lastSeen,
    required this.connected,
    required this.temperature,
    required this.humidity,
    required this.pressure,
    required this.batterylevel,
  });

  static List<Sensor> getSensorList() {
    List<Sensor> sensors = [];

    for (var i = 0; i < 13; i++) {
      sensors.add(
        Sensor(
          name: 'Balkony',
          lastSeen: DateTime.now(),
          connected: true,
          temperature:
              (Random().nextDouble() + Random().nextInt(40)).toStringAsFixed(1),
          humidity: Random().nextInt(100),
          pressure: Random().nextInt(1500),
          batterylevel: Random().nextInt(100),
        ),
      );
    }

    return sensors;
  }
}
