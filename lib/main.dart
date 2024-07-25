import 'package:flutter/material.dart';
import 'package:network_example/router/my_route_manager.dart';
import 'core/network/network_service.dart';

import 'dart:developer' as developer;

void main() async{
  /// Start dio package
  NetworkService.instance.start();
  runApp(const MyApp());
  developer.log('log me', name: 'my.app.category');
  developer.log('log me 1', name: 'my.other.category');
  developer.log('log me 2', name: 'my.other.category');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  /// GoRouter ile routing yapacaksam. MaterialApp yerine [MaterialApp.router()] constructor'ını kullanmalıyım.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: MyRouteManager.router,
    );
  }
}


