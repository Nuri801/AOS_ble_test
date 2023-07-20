// import 'package:flutter/material.dart';
// import 'package:flutter_blue/flutter_blue.dart';
//
// void main() => runApp(EntranceDeviceApp());
//
// class EntranceDeviceApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: EntranceDeviceScreen(),
//     );
//   }
// }
//
// class EntranceDeviceScreen extends StatefulWidget {
//   @override
//   _EntranceDeviceScreenState createState() => _EntranceDeviceScreenState();
// }
//
// class _EntranceDeviceScreenState extends State<EntranceDeviceScreen> {
//   FlutterBlue flutterBlue = FlutterBlue.instance;
//   // Add any necessary variables and states for your entrance device simulation.
//
//   @override
//   void initState() {
//     super.initState();
//     initBluetooth();
//   }
//
//   void initBluetooth() async {
//     // Check if Bluetooth is available on the Android device.
//     bool isAvailable = await flutterBlue.isAvailable;
//     if (!isAvailable) {
//       print('Bluetooth is not available on this device.');
//       // Handle the case where Bluetooth is not available.
//       return;
//     }
//
//     // Start advertising as a BLE peripheral with a specific service UUID.
//     await flutterBlue.startAdvertising(localName: 'EntranceDeviceSimulator', serviceUuids: ['YOUR_SERVICE_UUID']);
//     print('Advertising as a BLE peripheral...');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // Add your UI elements here, as needed.
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Entrance Device Simulator'),
//       ),
//       body: Center(
//         child: Text('Your Entrance Device App UI'),
//       ),
//     );
//   }
// }
