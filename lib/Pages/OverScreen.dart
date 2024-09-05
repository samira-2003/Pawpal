import 'package:flutter/material.dart';

import 'package:pawpal/utils/utils.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:pawpal/utils/Screens.dart';

class OverScreen extends StatefulWidget {
  const OverScreen({super.key});

  @override
  State<OverScreen> createState() => _MainPageState();
}

class _MainPageState extends State<OverScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color: themeColor.mildblue,
        backgroundColor: Colors.white,
        height: MediaQuery.of(context).size.height * 0.065,
        index: _currentIndex,
        items: [
          _currentIndex == 0
              ? Image.asset(
                  "images/pet-house.png",
                  height: MediaQuery.of(context).size.height * 0.045,
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/pet-house.png",
                      height: MediaQuery.of(context).size.height * 0.045,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: themeColor.yellow),
                    )
                  ],
                ),
          _currentIndex == 1
              ? Image.asset(
                  "images/veterinarian.png",
                  height: MediaQuery.of(context).size.height * 0.045,
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/veterinarian.png",
                      height: MediaQuery.of(context).size.height * 0.045,
                    ),
                    Text(
                      'VetConnect',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: themeColor.yellow),
                    )
                  ],
                ),
          // _currentIndex == 2
          //     ? Image.asset(
          //         "images/calendar.png",
          //         height: MediaQuery.of(context).size.height * 0.045,
          //       )
          //     : Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Image.asset(
          //             "images/calendar.png",
          //             height: MediaQuery.of(context).size.height * 0.045,
          //           ),
          //           Text(
          //             'Schedule',
          //             style: TextStyle(
          //                 fontWeight: FontWeight.bold,
          //                 color: themeColor.mildblue),
          //           )
          //         ],
          //       ),
          // _currentIndex == 3
          //     ? Image.asset(
          //         "images/save-money.png",
          //         height: MediaQuery.of(context).size.height * 0.045,
          //       )
          //     : Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Image.asset(
          //             "images/save-money.png",
          //             height: MediaQuery.of(context).size.height * 0.045,
          //           ),
          //           Text(
          //             'Sell',
          //             style: TextStyle(
          //                 fontWeight: FontWeight.bold,
          //                 color: themeColor.mildblue),
          //           )
          //         ],
          //       ),
        ],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
