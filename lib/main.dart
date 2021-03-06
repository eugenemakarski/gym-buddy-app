import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gym_buddy/routes.dart';
import 'package:gym_buddy/theme.dart';
import 'firebase_options.dart';
import 'home/authenticator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: appTheme,
        routes: appRoutes,
        home: const Authenticator());
  }
}
