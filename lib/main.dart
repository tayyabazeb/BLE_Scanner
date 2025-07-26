import 'package:flutter/material.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(BleScannerApp());
}

class BleScannerApp extends StatefulWidget {
  @override
  State<BleScannerApp> createState() => _BleScannerAppState();
}

class _BleScannerAppState extends State<BleScannerApp> {
  final FlutterReactiveBle _ble = FlutterReactiveBle();
  final List<DiscoveredDevice> _devices = [];

  @override
  void initState() {
    super.initState();
    _requestPermissions();
  }

  Future<void> _requestPermissions() async {
    await Permission.bluetooth.request();
    await Permission.location.request();
    _startScanning();
  }

  void _startScanning() {
    _devices.clear();
    _ble.scanForDevices(withServices: []).listen((device) {
      if (!_devices.any((d) => d.id == device.id)) {
        setState(() {
          _devices.add(device);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLE Scanner',
      home: Scaffold(
        appBar: AppBar(title: Text('Nearby BLE Devices')),
        body: ListView.builder(
          itemCount: _devices.length,
          itemBuilder: (context, index) {
            final device = _devices[index];
            return ListTile(
              title: Text(device.name.isEmpty ? 'Unknown Device' : device.name),
              subtitle: Text(device.id),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _startScanning,
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
