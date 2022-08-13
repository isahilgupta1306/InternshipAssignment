import 'package:flutter/material.dart';
import 'package:internship_assignment/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class AchievementPage extends StatelessWidget {
  const AchievementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: deviceSize.height * 0.41,
              height: deviceSize.height * 0.41,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage(
                    "assets/clan.jpg",
                  ),
                ),
                boxShadow: [
                  //background color of box
                  BoxShadow(
                    color: Colors.white.withOpacity(0.7),
                    blurRadius: 25.0, // soften the shadow
                    spreadRadius: 3.0, //extend the shadow
                  )
                ],
              ),
              margin: const EdgeInsets.only(top: 65),
              // height: deviceSize.height * 0.6,
              child: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.topCenter,
                height: deviceSize.height * 0.1,
                width: deviceSize.width * 0.85,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Clan Name : Lorem Ipsum",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "28 Members , 5 Online",
                      style: GoogleFonts.roboto(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              height: 30,
              thickness: 1,
              color: Colors.white.withOpacity(0.8),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Achievements",

                  // textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                      color: goldenColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Current League",

                        // textAlign: TextAlign.left,
                        style: GoogleFonts.roboto(
                            color: pinkColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: 0.2 * deviceSize.width,
                    margin: const EdgeInsets.only(right: 20),
                    child: Image.asset("assets/badge.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "League Ranking",

                        // textAlign: TextAlign.left,
                        style: GoogleFonts.roboto(
                            color: pinkColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: 0.2 * deviceSize.width,
                    margin: const EdgeInsets.only(right: 20),
                    child: Text(
                      "11th",
                      style: GoogleFonts.roboto(
                          color: goldenColor,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Experience",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.roboto(
                            color: pinkColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: 0.2 * deviceSize.width,
                    margin: const EdgeInsets.only(right: 20),
                    child: Text(
                      "2000 xp",
                      style: GoogleFonts.roboto(
                          color: goldenColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "# of Wins",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.roboto(
                            color: pinkColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: 0.2 * deviceSize.width,
                    margin: const EdgeInsets.only(right: 20),
                    child: Text(
                      "3",
                      style: GoogleFonts.roboto(
                          color: goldenColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              height: 25,
              thickness: 1,
              color: Colors.white.withOpacity(0.8),
            ),
          ],
        ),
      ),
    );
  }
}
