// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:linkup/Custom/custom.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(child: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
                Row(
                  children: [
                    KText(text: "Need an Account?",color: AppColors.h2,),
                    TextButton(onPressed: (){}, 
                    child: KText(text: "SignUp",fontWeight: FontWeight.bold,fontSize:15, color: AppColors.buttonColor,)),
                  ],
                ),
              ],
            ),
            Spacebetween(height:15,),
            KText(text: "Welcome Back!",color: AppColors.h1,fontSize: 30,fontWeight: FontWeight.bold,),
            Spacebetween(height: 10,),
            KText(text: "Login to your LinkUp accout",fontSize: 15,color: AppColors.h2,),
            KText(text: "and stay connected to the people who matter",fontSize: 15,color: AppColors.h2,),
            Spacebetween(height: 20,),
            TextFormFields(
              prefixIcon: Icon(Icons.mail),
              labelText: "Email",
              hintText: "Jon@gmail.com",
              borderRadius: BorderRadius.circular(10),
              borderColor: Colors.black,
            ),
            Spacebetween(height: 10,)
          ],
        ),
      )),
    );
  }
}