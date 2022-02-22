import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              child: Text(
                'Profile',
                style: Theme.of(context).textTheme.button,
              ),
              onPressed: () => Navigator.pushNamed(context, '/profile'))),
    );
  }
}
