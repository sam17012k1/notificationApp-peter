import 'package:flutter/material.dart';
import 'package:never_miss_an_update/screens/log_in.dart';
import 'package:never_miss_an_update/screens/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const BottomNavigation(),
      },
    );
  }
}
