import 'package:flutter/material.dart';

final class UserScreen extends StatelessWidget {
  final String userId;

  const UserScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("User id: $userId"),
        ElevatedButton(onPressed: () {}, child: Text("Go to Detail Screen"))
      ],
    ));
  }
}
