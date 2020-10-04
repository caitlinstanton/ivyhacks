import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:ivyhack/screens/donation_screen/donation_screen.dart';
import 'package:ivyhack/screens/history_screen/history_screen.dart';
import 'package:ivyhack/screens/home_screen.dart';
import 'package:ivyhack/screens/settings_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currIndex = 0;

  @override
  Widget build(BuildContext context) {
    final double iconSize = 25;
    var bottomNavigationBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          size: iconSize,
        ),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.insert_chart_rounded),
        label: "History",
      ),
      BottomNavigationBarItem(
        icon: Icon(Entypo.globe),
        label: "Donate",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: "Settings",
      ),
    ];
    return Scaffold(
      body: Center(
          child: PageTransitionSwitcher(
        child: getScreen(_currIndex),
        transitionBuilder: (child, animation, secondaryAnimation) {
          return FadeThroughTransition(
            child: child,
            animation: animation,
            secondaryAnimation: secondaryAnimation,
          );
        },
      )),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: bottomNavigationBarItems,
        currentIndex: _currIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 20,
        unselectedFontSize: 20,
        onTap: (index) {
          setState(() {
            _currIndex = index;
            print("Chose $index");
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.green.withOpacity(0.38),
        backgroundColor: Colors.white,
      ),
    );
  }
}

Widget getScreen(int idx) {
  if (idx == 0) {
    return HomeScreen();
  } else if (idx == 1) {
    return HistoryScreen();
  } else if (idx == 2) {
    return DonationScreen();
  } else if (idx == 3) {
    return SettingsScreen();
  }
}
