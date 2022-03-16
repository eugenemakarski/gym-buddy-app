import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gym_buddy/workouts/workouts.dart';
import '../gym/gym.dart';
import '../stats/stats.dart';
import '../workouts/workouts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List _pages = [
    const GymScreen(),
    const WorkoutScreen(),
    const StatsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GymWithBudz"),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: const Color.fromARGB(255, 57, 166, 255),
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
              label: 'Workouts'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.chartBar,
                size: 20,
              ),
              label: 'Stats')
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
