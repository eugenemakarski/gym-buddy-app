import 'package:gym_buddy/home/home.dart';
import 'package:gym_buddy/login/login.dart';
import 'package:gym_buddy/profile/profile.dart';

var appRoutes = {
  '/': (context) => const Homescreen(),
  '/login': (context) => const Login(),
  '/profile': (context) => const Profile(),
};
