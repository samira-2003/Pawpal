import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawpal/facilities/MediPaw.dart';
import 'package:pawpal/facilities/PetVitals.dart';
import 'package:pawpal/facilities/foodtracker.dart';
import 'package:pawpal/facilities/petalert.dart';
import 'package:pawpal/facilities/steptrack.dart';
import 'package:pawpal/facilities/track.dart';
import 'package:pawpal/themes.dart';
import 'package:pawpal/utils/utils.dart';
import 'package:icons_plus/icons_plus.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: themeColor.mildblue),
      drawer: Drawer(
        backgroundColor: themeColor.yellow,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: themeColor.mildblue),
              accountName: Text(
                "Pinkesh Darji",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              accountEmail: Text(
                "pinkesh.earth@gmail.com",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              currentAccountPicture:
                  Image(image: AssetImage('images/user.png')),
            ),
            ListTile(
              leading: Image(
                image: AssetImage(
                  'images/heart.png',
                ),
                width: 40,
                height: 40,
              ),
              title: Text(
                'Pawfolio',
                style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image(
                image: AssetImage(
                  'images/settings.png',
                ),
                width: 40,
                height: 40,
              ),
              title: Text(
                'Settings',
                style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image(
                image: AssetImage(
                  'images/handshake.png',
                ),
                width: 40,
                height: 40,
              ),
              title: Text(
                'Help',
                style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              leading:
                  Icon(Icons.notes_outlined, color: Colors.white, size: 30),
              title: Text(
                'Terms and Conditions',
                style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: GestureDetector(
                    onTap: () => {Get.to(() => const StepTrack())},
                    child: Card.filled(
                      color: themeColor.mildyellow,
                      shadowColor: Colors.black,
                      elevation: 10,
                      child: Column(
                        children: [
                          Image.asset(
                            'images/footprint.png',
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            "Step Track",
                            style: GoogleFonts.inter(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 150,
                  child: GestureDetector(
                    onTap: () => {Get.to(() => TableComplexExample())},
                    child: Card.filled(
                      color: themeColor.mildyellow,
                      shadowColor: Colors.black,
                      elevation: 10,
                      child: Column(
                        children: [
                          Image.asset(
                            'images/danger.png',
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            "Pet Alert",
                            style: GoogleFonts.inter(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: GestureDetector(
                    // onTap: () => {Get.to(() => ExampleAlarmHomeScreen())},
                    child: Card.filled(
                      color: themeColor.mildyellow,
                      shadowColor: Colors.black,
                      elevation: 10,
                      child: Column(
                        children: [
                          Image.asset(
                            'images/dog-food.png',
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            "Nom Nom Tracker",
                            style: GoogleFonts.inter(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 150,
                  child: GestureDetector(
                    onTap: () => {Get.to(() => const Medipaw())},
                    child: Card.filled(
                      color: themeColor.mildyellow,
                      shadowColor: Colors.black,
                      elevation: 10,
                      child: Column(
                        children: [
                          Image.asset(
                            'images/diagnosis.png',
                            width: 95,
                            height: 100,
                          ),
                          Text(
                            "MediPaw Vault",
                            style: GoogleFonts.inter(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: GestureDetector(
                    onTap: () => {Get.to(() => PetVitals())},
                    child: Card.filled(
                      color: themeColor.mildyellow,
                      shadowColor: Colors.black,
                      elevation: 10,
                      child: Column(
                        children: [
                          Image.asset(
                            'images/heart-rate.png',
                            width: 95,
                            height: 100,
                          ),
                          Text(
                            "PetVitals",
                            style: GoogleFonts.inter(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 150,
                  child: GestureDetector(
                    onTap: () => {Get.to(() => const GoogleMapPage())},
                    child: Card.filled(
                      color: themeColor.mildyellow,
                      shadowColor: Colors.black,
                      elevation: 10,
                      child: Column(
                        children: [
                          Image.asset(
                            'images/destination.png',
                            width: 95,
                            height: 100,
                          ),
                          Text(
                            "TrackTails",
                            style: GoogleFonts.inter(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
