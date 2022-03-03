import 'package:flutter/material.dart';
import 'package:gym_buddy/login/login.dart';
import 'package:gym_buddy/home/home.dart';
import 'package:gym_buddy/services/auth.dart';

class Authenticator extends StatelessWidget {
  const Authenticator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading");
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('error'),
          );
        } else if (snapshot.hasData) {
          return const Home();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
