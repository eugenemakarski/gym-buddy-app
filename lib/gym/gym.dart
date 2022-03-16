import 'package:flutter/material.dart';

import '../services/services.dart';

class GymScreen extends StatelessWidget {
  const GymScreen({Key? key}) : super(key: key);

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
            return SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Card(
                color: Colors.blueGrey[20],
                child: SizedBox(
                    width: 400,
                    height: 150,
                    child: Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              gymData.gymName,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, top: 4, bottom: 4, right: 4),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Members: ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                    flex: 2,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "${gymData.users.length.toString()} / ${gymData.capacity.toString()}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                    flex: 5,
                                  )
                                ],
                                crossAxisAlignment: CrossAxisAlignment.start,
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, top: 4, bottom: 4, right: 4),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Description: ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                    flex: 2,
                                  ),
                                  Flexible(
                                    child: Text(
                                      gymData.description,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                    flex: 5,
                                  )
                                ],
                                crossAxisAlignment: CrossAxisAlignment.start,
                              )),
                        ],
                      ),
                    )),
              ),
            ));
          } else {
            return const Text('No users found in Firestore. Check database');
          }
        });
  }
}
