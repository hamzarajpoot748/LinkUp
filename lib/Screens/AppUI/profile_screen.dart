import 'package:flutter/material.dart';
import 'package:linkup/widgets/custom.dart';

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
                    // height: MediaQuery.of(context).size.height*0.4,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      clipBehavior: Clip.none,
                      children: [
                        Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            decoration:  BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            ),
                            height: MediaQuery.of(context).size.height*.35,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: Column(
                                  children: [
                                    KText(text: "Jon Doe",color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,),
                                    KText(text: "@jondoe",fontSize: 15,),
                                    KText(text: "UI/UX Designer, Gamer, Developer",),
                                    KText(text: "NewYork, USA, www.johndoe.com"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -50,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.orange,
                          ),
                          ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              decoration:  BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              ),
                              // height: MediaQuery.of(context).size.height*.60,
                            ),
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