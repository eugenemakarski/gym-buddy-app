import 'package:flutter/material.dart';

import '../services/auth.dart';
import '../services/firestore.dart';
import '../services/services.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return StreamBuilder<UserData>(
        stream: FirestoreService().userStream(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading");
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("ERROR"),
            );
          } else if (snapshot.hasData) {
            var userData = snapshot.data!;

            return Container(
              child: Text(userData.firstName),
            );
          } else {
            return const Text('No users found in Firestore. Check database');
          }
        });
  }
}
