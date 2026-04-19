import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 5,right: 5,top: 70),
            child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.4,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      clipBehavior: Clip.none,
                      children: [
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.orange,
                          ),
                          ),
                      ],
                    ),
                  ),
            
                ],
              ),
          ),
          ),
      ),
    );
  }
}