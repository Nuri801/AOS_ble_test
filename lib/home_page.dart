// import 'package:flutter/material.dart';
// import 'package:flutter_blue/flutter_blue.dart';
//
// class HomePage extends StatefulWidget {
//   HomePage({Key? key}) : super(key: key);
//
//
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   FlutterBlue flutterBlue = FlutterBlue.instance;
//   late double deviceWidth;
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
//     // Start scanning
//     flutterBlue.startScan(timeout: Duration(seconds: 4));
//
// // Listen to scan results
//     var subscription = flutterBlue.scanResults.listen((results) {
//       // do something with scan results
//       for (ScanResult r in results) {
//         print('${r.device.name} found! rssi: ${r.rssi}');
//       }
//     });
//
// // Stop scanning
//     flutterBlue.stopScan();
//
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     deviceWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: const Color(0xFFc8d6e5),
//       body: homePageUI(),
//     );
//   }
//
//   Widget homePageUI() {
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const Padding(
//               padding: EdgeInsets.only(top: 20),
//               child: Text(
//                 'BLE TEST',
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(
//               height: 130,
//               width: 130,
//               child: Image.asset(
//                 "assets/image/bluetooth-icon-6 copy.png",
//               ),
//             ),
//             SizedBox(
//               width: deviceWidth,
//               height: 45,
//               child: ElevatedButton(
//                 onPressed: () {
//                   receivePressed();
//                 },
//                 child: const Text(
//                   "Receive",
//                   style: TextStyle(fontSize: 18, color: Colors.white),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//   void receivePressed() {
//     // when this button is pressed we need to turn on scanning for nearby ble
//     // enabled devices and read data from them.
//   }
// }

