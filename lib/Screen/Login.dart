import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawpal/Pages/MainPage.dart';
import 'package:pawpal/Pages/OverScreen.dart';
import 'package:pawpal/Screen/SignUp.dart';
import 'package:pawpal/themes.dart';
import 'package:pawpal/utils/utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 229, 242, 244),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Image.asset(
            'images/logo.png',
            width: 200,
            height: 200,
          ),
          Text(
            "Welcome",
            style:
                GoogleFonts.breeSerif(fontSize: 30, color: themeColor.yellow),
          ), //background: rgba(249, 222, 71, 1);
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Text(
            "Paws-itively perfect health at your fingertips",
            textAlign: TextAlign.center,
            style: GoogleFonts.caveat(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: themeColor.blue), //background: rgba(4, 139, 62, 1);
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Column(
            children: [
              Container(
                alignment: AlignmentDirectional.centerStart,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Email address",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.exo(
                      color: themeColor.yellow,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  prefixText: "name@example.com",
                  labelStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.40,
                    maxWidth: MediaQuery.of(context).size.height * 0.40,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                alignment: AlignmentDirectional.centerStart,
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Password",
                  textAlign: TextAlign.right,
                  style: GoogleFonts.exo(
                      color: themeColor.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  prefixText: "******",
                  labelStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.40,
                    maxWidth: MediaQuery.of(context).size.height * 0.40,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const OverScreen());
            },
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(60, 5, 60, 5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: themeColor.mildblue),
            child: Text(
              "Login",
              style: GoogleFonts.crimsonPro(color: Colors.white, fontSize: 30),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),

          TextButton(
            child: Text(
              "Create new Account",
              style:
                  GoogleFonts.breeSerif(color: themeColor.yellow, fontSize: 20),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
