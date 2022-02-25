import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gym_buddy/home/home.dart';
import '../gym/gym.dart';
import '../stats/stats.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final List _pages = [HomeScreen(), const Gym(), Stats()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GymWithBudz"),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Color.fromARGB(255, 57, 166, 255),
        backgroundColor: Colors.grey[900],
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.home,
                size: 20,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.dumbbell,
                size: 20,
              ),
              label: 'My Gym'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.chartBar,
                size: 20,
              ),
              label: 'Stats')
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
