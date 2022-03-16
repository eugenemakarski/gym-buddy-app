import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../services/services.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Gym>(
        stream: FirestoreService().gymStream(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading");
          } else if (snapshot.hasError) {
            return const Text('Something went wrong');
          } else if (snapshot.hasData) {
            var gymData = snapshot.data!;

            return Container(
              child: Text(gymData.gymName),
            );
          } else {
            return const Text('No workouts found. Please create a workout');
          }
        });
  }
}
