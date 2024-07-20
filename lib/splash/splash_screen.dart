import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Splash Screen"),
          ),
          ElevatedButton(onPressed: () {

          }, child: Text("Go to Detail Screen"))
        ],

      ),
    );
  }
}
