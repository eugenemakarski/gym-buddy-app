import 'package:flutter/material.dart';
import 'package:gym_buddy/services/auth.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (ElevatedButton(
      child: const Text('Sign Out'),
      onPressed: () async {
        await AuthService().signOut();
        Navigator.of(context)
            .pushNamedAndRemoveUntil('/home', (route) => false);
      },
    ));
  }
}
