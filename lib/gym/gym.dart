import 'package:flutter/material.dart';

import '../services/services.dart';

class GymScreen extends StatelessWidget {
  const GymScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = AuthService().user;
    if (user != null) {
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
    } else {
      return const Text("LOADING");
    }
  }
}
