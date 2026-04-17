 import 'package:flutter/material.dart';
import 'package:linkup/Custom/custom.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
                Row(
                  children: [
                    KText(text: "Already have an Account?",color: AppColors.h2,),
                    TextButton(onPressed: (){}, 
                    child: KText(text: "Log In",fontWeight: FontWeight.bold,fontSize:15, color: AppColors.buttonColor,)),
                  ],
                ),
              ],
            ),
            Spacebetween(height:15,),
            KText(text: "Create Account",color: AppColors.h1,fontSize: 30,fontWeight: FontWeight.bold,),
            Spacebetween(height: 10,),
            KText(text: "Join LinkUp and start connecting,",fontSize: 15,color: AppColors.h2,),
            KText(text: "sharing and building your community",fontSize: 15,color: AppColors.h2,),
            Spacebetween(height: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
  padding: EdgeInsets.all(0),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              KText(text: "Full Name"),
            TextFormFields(
                  prefixIcon: Icon(Icons.person),
                  hintText: "Your full name",
                  // borderRadius: BorderRadius.circular(20),
                  borderColor: Colors.black,
                ),
          ],
        ),
      ),

      SizedBox(width: 10),

      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              KText(text: "Username"),
            TextFormFields(
                  prefixIcon: Icon(Icons.alternate_email),
                  hintText: "Choose a username",
                  borderColor: Colors.black,
                ),
          ],
        ),
      ),
    ],
  ),
),
            Spacebetween(height: 20),
              KText(text: "Email"),
              TextFormFields(
              prefixIcon: Icon(Icons.mail),
              hintText: "Jon@gmail.com",
              // borderRadius: BorderRadius.circular(20),
              borderColor: Colors.black,
            ),
            Spacebetween(height: 20),
            KText(text: "Password"),
            TextFormFields(
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                onPressed: (){
                  
                }, icon: Icon(Icons.remove_red_eye),
                ),
              hintText: "Enter your password",
              borderRadius: BorderRadius.circular(20),
              borderColor: Colors.black,
            ),
            Spacebetween(height: 20),
             KText(text: "Password"),
            TextFormFields(
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                onPressed: (){
                  
                }, icon: Icon(Icons.remove_red_eye),
                ),
              hintText: "Confirm Password",
              borderRadius: BorderRadius.circular(20),
              borderColor: Colors.black,
            ),
            Spacebetween(height: 20),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                KText(text: "Confirm your Password?",fontSize: 15,color: AppColors.buttonColor,fontWeight: FontWeight.bold,),
              ],
            ),
            Spacebetween(height: 20),
            Kbutton(
              text: "Log In",
            ),
            Spacebetween(height: 20),
            CustomDivider(),

          ],
        ),
      )),
    );
  }
}