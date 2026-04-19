// ignore_for_file: unused_import, no_leading_underscores_for_local_identifiers, avoid_print

import 'package:flutter/material.dart';
import 'package:linkup/Custom/custom.dart';
import 'package:linkup/Screens/home_screen.dart';
import 'package:linkup/Screens/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
  final _formkey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();


    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back)),
                  Row(
                    children: [
                      KText(text: "Need an Account?",color: AppColors.h2,),
                      TextButton(onPressed: (){
                        navigateTo(context, Signup());
                      }, 
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
              Spacebetween(height: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                KText(text: "Email"),
                TextFormFields(
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return "field required";
                    }else if(!value.contains('@')|| !value.contains('.com')){
                      return "Enter valid email";

                    }
                    return null;
                  },
                  controller: emailController,
                prefixIcon: Icon(Icons.mail),
                hintText: "Jon@gmail.com",
                // borderRadius: BorderRadius.circular(20),
                borderColor: Colors.black,
              ),
              Spacebetween(height: 20),
              KText(text: "Password"),
              TextFormFields(
                validator: (value) {
                    if(value == null || value.isEmpty){
                      return "field required";
                    }
                    String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
                    RegExp regex = RegExp(pattern);
                    if(regex.hasMatch(value)){
                      return "enter valid email";
                    }
                    return null;
                  },
                controller: passController,
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
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  KText(text: "Forgot Password?",fontSize: 15,color: AppColors.buttonColor,fontWeight: FontWeight.bold,),
                ],
              ),
              Spacebetween(height: 20),
              Kbutton(
                callback: (){
                  if(_formkey.currentState!.validate()){
                    emailController.clear();
                    passController.clear();
                    navigateAndRemove(context, HomeScreen());
                  }else{
                    "there is some issue";
                  }
                  
                },
                text: "Log In",
              ),
              Spacebetween(height: 20),
              CustomDivider(),
          
            ],
          ),
        ),
      )),
    );
  }
}