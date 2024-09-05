import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawpal/themes.dart';
import 'package:pawpal/utils/utils.dart';
import 'package:pedometer/pedometer.dart';

class StepTrack extends StatefulWidget {
  const StepTrack({super.key});

  @override
  State<StepTrack> createState() => _StepTrackState();
}

class _StepTrackState extends State<StepTrack> {
  String _stepCountValue = '0';
  Stream<StepCount> _stepCountStream = Stream.empty();
  Pedometer _pedometer = Pedometer();

  @override
  void initState() {
    super.initState();
    _startListening();
  }

  void _startListening() {
    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen((StepCount event) {
      setState(() {
        _stepCountValue = event.steps.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor.blue,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Image.asset(
              'images/paw.png',
              width: 150,
              height: 150,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Text(
              'Paw Step Count',
              style: GoogleFonts.comfortaa(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              _stepCountValue,
              style: GoogleFonts.comfortaa(
                  fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
