import 'package:flutter/material.dart';
import 'package:linkup/widgets/custom.dart';
import 'package:linkup/widgets/custom_homescreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: KText(
          text: "My Profile",
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: AppColors.buttonColor,
        elevation: 5,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 25, color: Colors.white),
          onPressed: (){
            goBack(context);
          },
          ),
      ),
      body: Container(
        decoration: BoxDecoration(
          
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 5,right: 5,top: 10),
            child: ListView(
                children: [
                  SizedBox(
                    // height: MediaQuery.of(context).size.height*0.4,
                    width: double.infinity,
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
                        height: MediaQuery.of(context).size.height*.15,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,bottom: 10),
                    child: KText(text: "My Posts",color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return PostsHomeScreen();
                      },
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