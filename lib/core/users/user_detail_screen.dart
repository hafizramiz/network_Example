import 'package:flutter/material.dart';
class UserDetailScreen extends StatelessWidget {
  const UserDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: Text("User Detail Screen"),
        ),
       // ElevatedButton(onPressed: () {}, child: const Text("Go to Detail Screen"))
      ],);
  }
}
