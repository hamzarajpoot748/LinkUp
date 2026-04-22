// ignore_for_file: unused_local_variable, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:linkup/Custom/custom.dart';
import 'package:linkup/Screens/home_screen.dart';
import 'package:linkup/Screens/auth_UI_screens/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formkey = GlobalKey<FormState>();
  String? formattedDate;
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                    Row(
                      children: [
                        KText(
                          text: "Already have an Account?",
                          color: AppColors.h2,
                        ),
                        TextButton(
                          onPressed: () {
                            navigateTo(context, Login());
                          },
                          child: KText(
                            text: "Log In",
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: AppColors.buttonColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacebetween(height: 15),
                KText(
                  text: "Create Account",
                  color: AppColors.h1,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                Spacebetween(height: 10),
                KText(
                  text: "Join LinkUp and start connecting,",
                  fontSize: 15,
                  color: AppColors.h2,
                ),
                KText(
                  text: "sharing and building your community",
                  fontSize: 15,
                  color: AppColors.h2,
                ),
                Spacebetween(height: 30),
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
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "field required";
                                    }
                                    return null;
                                  },
                                  controller: nameController,
                                  prefixIcon: Icon(Icons.person),
                                  hintText: "Your name",
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
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "field required";
                                    }
                                    return null;
                                  },
                                  controller: usernameController,
                                  prefixIcon: Icon(Icons.alternate_email),
                                  hintText: "username",
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "field required";
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
                        if (value == null || value.isEmpty) {
                          return "field required";
                        }
                        return null;
                      },
                      controller: passController,
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      hintText: "Enter your password",
                      borderRadius: BorderRadius.circular(20),
                      borderColor: Colors.black,
                    ),
                    Spacebetween(height: 20),
                    KText(text: "Confirm Password"),
                    TextFormFields(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "field required";
                        }
                        return null;
                      },
                      controller: confirmpassController,
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      hintText: "Confirm Password",
                      borderRadius: BorderRadius.circular(20),
                      borderColor: Colors.black,
                    ),
                    Spacebetween(height: 20),
                    Row(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () async {
                                DateTime? datePicked = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime.now(),
                                );
                                if (datePicked != null) {
                                  setState(() {
                                   formattedDate ="${datePicked.day}-${datePicked.month}-${datePicked.year} ";
                                  });
                                }
                              },
                              icon: Icon(Icons.calendar_month),
                            ),
                            KText (text: 
                            formattedDate == null ?
                            "Pick D.O.B":"$formattedDate"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Kbutton(
                  callback: () {
                      navigateAndRemove(context, HomeScreen());
                    // if (_formkey.currentState!.validate()) {
                    //   nameController.clear();
                    //   usernameController.clear();
                    //   emailController.clear();
                    //   passController.clear();
                    //   confirmpassController.clear();
                    //   navigateAndRemove(context, HomeScreen());
                    // } else {
                    //   "there is some issue";
                    // }
                  },
                  text: "Sign Up",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
