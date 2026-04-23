// ignore_for_file: avoid_print, unused_import

import 'package:flutter/material.dart';
import 'package:linkup/Screens/AppUI/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:linkup/Screens/AppUI/post_screen.dart';

    String? userid ;
    
    

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

Future<void> initUser() async{
  if(FirebaseAuth.instance.currentUser == null){
    await FirebaseAuth.instance.signInAnonymously();
    userid = FirebaseAuth.instance.currentUser!.uid;
  }
  Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(
    // ignore: use_build_context_synchronously
    context,
    MaterialPageRoute(builder: (context) => HomeScreen()),
  );
    });
}


  @override
  void initState(){
    super.initState();
     initUser();
    
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF6A11CB), // Purple
              Color(0xFF2575FC), // Blue
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // 🔗 Logo (temporary icon)
            const Icon(
              Icons.connect_without_contact,
              size: 150,
              color: Colors.white,
            ),

            const SizedBox(height: 20),

            // 📝 App Name
            const Text(
              "LinkUp",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),

            const SizedBox(height: 20),

            // Tagline
            const Text(
              "Connect • Share • Grow",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 40),

            // ⏳ Loading Indicator
            const CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      );
  }
}