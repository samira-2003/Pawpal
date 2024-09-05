import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawpal/Screen/SplashScreen.dart';

void main() {
  runApp(const PawPal());
}

class PawPal extends StatefulWidget {
  const PawPal({super.key});

  @override
  State<PawPal> createState() => _PawPalState();
}

class _PawPalState extends State<PawPal> {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
