import 'package:gym_buddy/home/home.dart';
import 'package:gym_buddy/login/login.dart';
import 'package:gym_buddy/profile/profile.dart';
import 'package:gym_buddy/gym/gym.dart';
import 'package:gym_buddy/stats/stats.dart';

var appRoutes = {
  '/home': (context) => const HomeScreen(),
  '/gym': (context) => const Gym(),
  '/login': (context) => const Login(),
  '/profile': (context) => const Profile(),
  '/stats': (context) => const Stats(),
};
