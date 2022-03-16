import 'package:gym_buddy/login/login.dart';
import 'package:gym_buddy/profile/profile.dart';
import 'package:gym_buddy/gym/gym.dart';
import 'package:gym_buddy/stats/stats.dart';
import 'package:gym_buddy/workouts/workouts.dart';

var appRoutes = {
  '/gym': (context) => const GymScreen(),
  '/login': (context) => const LoginScreen(),
  '/workouts': (context) => const WorkoutScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/stats': (context) => const StatsScreen(),
};
