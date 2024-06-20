import 'package:flutter/material.dart';
import 'package:network_example/network/network_service.dart';

import 'home/home_page.dart';

void main() async{
  /// Start dio package
  NetworkService.instance.start();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Network Example',
      home: HomePage()
    );
  }
}


