// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:linkup/Screens/AppUI/post_screen.dart';
import 'package:linkup/widgets/custom_homescreen.dart';
import 'package:linkup/Screens/chat_UI/all_chat_screen.dart';
import 'package:linkup/Screens/chat_UI/chat_inperson_screen.dart';
import 'package:linkup/Screens/AppUI/home_screen.dart';
import 'package:linkup/Screens/auth_UI_screens/login.dart';
import 'package:linkup/Screens/AppUI/profile_screen.dart';
import 'package:linkup/Screens/auth_UI_screens/signup.dart';
import 'package:linkup/Screens/auth_UI_screens/splash_screen.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        body: SplashScreen(),
        ),
    );
  }
}
