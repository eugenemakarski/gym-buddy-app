import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rxdart/rxdart.dart';
import 'package:gym_buddy/services/auth.dart';
import 'package:gym_buddy/services/models.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Reads documents from gyms
  Future<UserData> getUser(String userId) async {
    var ref = _db.collection('Users').doc(userId);
    var snapshot = await ref.get();
    return UserData.fromJson(snapshot.data() ?? {});
  }

  Stream<UserData> userStream() {
    return AuthService().userStream.switchMap((user) {
      if (user != null) {
        var ref = _db.collection('Users').doc(user.uid);
        return ref.snapshots().map((doc) => UserData.fromJson(doc.data()!));
      } else {
        return Stream.fromIterable([
          UserData(Height(unit: "", value: ""), Weight(unit: "", value: 0))
        ]);
      }
    });
  }

  Stream<Gym> gymStream() {
    return AuthService().userStream.switchMap((user) {
      return _db
          .collection('Gyms')
          .where('users', arrayContains: user!.uid)
          .snapshots()
          .map((snapshot) => Gym.fromJson(snapshot.docs.first.data()));
    });
  }

  Stream<Workout> workoutStream() {
    return AuthService().userStream.switchMap((user) {
      var ref = _db.collection('Workouts').doc('cvyvzHjWTtKm8ZwCEk9c');
      return ref.snapshots().map((doc) => Workout.fromJson(doc.data()!));
    });
  }
}
