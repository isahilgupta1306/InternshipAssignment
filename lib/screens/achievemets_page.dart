import 'package:flutter/material.dart';
import 'package:internship_assignment/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class AchievementPage extends StatelessWidget {
  const AchievementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Text(
          "Achievements",
          style: GoogleFonts.roboto(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
