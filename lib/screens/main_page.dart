import 'package:flutter/material.dart';
import 'package:internship_assignment/screens/achievemets_page.dart';
import 'package:internship_assignment/screens/group_page.dart';
import 'package:internship_assignment/screens/home_page.dart';
import 'package:internship_assignment/screens/leaderboard_page.dart';
import 'package:internship_assignment/screens/profile_page.dart';
import 'package:internship_assignment/utils.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _children = [
    const HomePage(),
    const AchievementPage(),
    const LeaderBoardPage(),
    const GroupPage(),
    const ProfilePage(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: backgroundColor,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(Icons.emoji_events),
              label: "Achievements",
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard),
              label: "Leaderboard",
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(Icons.groups),
              label: "Clan",
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.transparent),
        ],
        onTap: (value) {
          setState(() => _currentIndex = value);
        },
      ),
    );
  }
}
