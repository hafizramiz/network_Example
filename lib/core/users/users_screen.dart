import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final class UserScreen extends StatelessWidget {
  final String userId;

  const UserScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("UserScreen"),
        Text("User id: $userId"),
        ElevatedButton(onPressed: () {
        //  context.push('userdetail');
          context.push('/users/1/userdetail');

        }, child: Text("Go to User Detail Screen"))
      ],
    ));
  }
}

