import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship_assignment/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dummyText = "Priya in International debating league";
  String girlImageUrl =
      "https://images.unsplash.com/photo-1580894895938-bd31a62ed8ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80";
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
            Container(
              margin: const EdgeInsets.only(left: 20, top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Past Featured Performance",

                  // textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                      color: goldenColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: deviceSize.height * 0.45,
              child: ListView.builder(
                itemCount: 14,
                itemBuilder: (ctx, i) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          girlImageUrl,
                          fit: BoxFit.cover,
                          width: deviceSize.width * 0.32,
                          height: deviceSize.width * 0.32,
                        ),
                        Flexible(
                          child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(right: 8, left: 30),
                            child: Text(
                              dummyText,
                              textAlign: TextAlign.left,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.roboto(
                                  color: pinkColor,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              height: 25,
              thickness: 1,
              color: Colors.white.withOpacity(0.8),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Live Clan Activities on Platform",

                  // textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                      color: goldenColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Stack(
              children: [
                Container(
                  height: deviceSize.height * 0.2,
                  width: deviceSize.width * 0.73,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      //background color of box
                      BoxShadow(
                        color: Colors.white.withOpacity(0.6),
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 1.0, //extend the shadow
                      )
                    ],
                    image: const DecorationImage(
                        image: AssetImage("assets/tech.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: deviceSize.height * 0.2,
                  width: deviceSize.width * 0.73,
                  alignment: Alignment.center,
                  child: Text(
                    "Live Trading Championship",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Container(
                  height: deviceSize.height * 0.2,
                  width: deviceSize.width * 0.73,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      //background color of box
                      BoxShadow(
                        color: Colors.white.withOpacity(0.6),
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 1.0, //extend the shadow
                      )
                    ],
                    image: const DecorationImage(
                        image: AssetImage("assets/tech.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: deviceSize.height * 0.2,
                  width: deviceSize.width * 0.73,
                  alignment: Alignment.center,
                  child: Text(
                    "Treasure Hunt",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                )
              ],
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              height: 70,
              thickness: 1,
              color: Colors.white.withOpacity(0.8),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Clan Discussions",

                  // textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                      color: goldenColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(
              height: 8,
            ),

            //further section
            SizedBox(
              height: deviceSize.height * 0.45,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 8),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      height: double.infinity,
                      child: Icon(
                        CupertinoIcons.text_bubble,
                        size: 21,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                    title: Text(
                      "General Thread : ${index + 1}",
                      style: GoogleFonts.roboto(
                          color: pinkColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "${18 - index} Unread Message",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
