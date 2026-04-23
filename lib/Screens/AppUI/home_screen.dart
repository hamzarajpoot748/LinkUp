// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:linkup/Screens/AppUI/post_screen.dart';
import 'package:linkup/Screens/AppUI/profile_screen.dart';
import 'package:linkup/widgets/custom.dart';
import 'package:linkup/widgets/custom_homescreen.dart';
import 'package:linkup/Screens/chat_UI/all_chat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController postController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: KText(
          text: "LinkUp",
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: AppColors.buttonColor,
        elevation: 5,
        leading: Icon(Icons.location_on, size: 25, color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_add, size: 25, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              navigateTo(context, ChatScreen());
            },
            icon: Icon(Icons.message, size: 25, color: Colors.white),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 5, right: 5),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        navigateTo(context, ProfileScreen());
                      },
                      icon: Icon(Icons.person_add_alt_1_rounded, size: 30),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          navigateTo(context, CreatePostScreen());
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 53, 52, 52),
                            ),
                          ),
                          child: Center(
                            child: KText(
                              text: "Whats on your mind",
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.image, size: 30),
                    ),
                  ],
                ),
              ),
              Spacebetween(height: 20),
              SizedBox(
                width: double.infinity,
                height: 170,
                child: CreateStory(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Divider(
                  color: Colors.grey,
                  indent: 2,
                  endIndent: 2,
                  thickness: 2,
                ),
              ),
              // post listview.builder
              ListView.builder(
                itemCount: 5,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return PostsHomeScreen();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
