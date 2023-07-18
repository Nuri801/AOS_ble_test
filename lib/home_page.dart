import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  late double deviceWidth;

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFc8d6e5),
      body: homePageUI(),
    );
  }

  Widget homePageUI() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'BLE TEST',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 130,
              width: 130,
              child: Image.asset(
                "assets/image/bluetooth-icon-6 copy.png",
              ),
            ),
            SizedBox(
              width: deviceWidth,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  receivePressed();
                },
                child: const Text(
                  "Receive",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void receivePressed() {
    // when this button is pressed we need to turn on scanning for nearby ble
    // enabled devices and read data from them.
  }

}