// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:linkup/Custom/custom_homescreen.dart';
import 'package:linkup/Screens/home_screen.dart';
import 'package:linkup/Screens/login.dart';
import 'package:linkup/Screens/profile_screen.dart';
import 'package:linkup/Screens/signup.dart';
import 'package:linkup/Screens/splash_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LinkUp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body: ProfileScreen(),
        ),
    );
  }
}
