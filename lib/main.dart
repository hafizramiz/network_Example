import 'package:flutter/material.dart';
import 'core/network/network_service.dart';
import 'home/home_screen.dart';

void main() async{
  /// Start dio package
  NetworkService.instance.start();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  /// GoRouter ile routing yapacaksam. MaterialApp yerine [MaterialApp.router()] constructor'ını kullanmalıyım.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}


