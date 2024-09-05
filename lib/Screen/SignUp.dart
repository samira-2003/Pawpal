import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawpal/Pages/MainPage.dart';
import 'package:pawpal/Pages/OverScreen.dart';
import 'package:pawpal/themes.dart';
import 'package:pawpal/utils/utils.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Center(
            child: Image.asset(
              'images/logo.png',
              width: 200,
              height: 200,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            alignment: AlignmentDirectional.centerStart,
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Username",
              textAlign: TextAlign.left,
              style: GoogleFonts.exo(
                  color: themeColor.yellow,
                  fontWeight: FontWeight.bold,
                  fontSize: 19),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              prefixText: "Your name",
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
              "Email address",
              textAlign: TextAlign.right,
              style: GoogleFonts.exo(
                  color: themeColor.yellow,
                  fontWeight: FontWeight.bold,
                  fontSize: 19),
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
            height: MediaQuery.of(context).size.height * 0.05,
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
              "Register",
              style: GoogleFonts.crimsonPro(color: Colors.white, fontSize: 30),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          TextButton(
            onPressed: () {
              Get.to(() => const MainPage());
            },
            child: Text(
              "Have a account? SignIn",
              style: GoogleFonts.breeSerif(
                  color: themeColor.yellow,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
