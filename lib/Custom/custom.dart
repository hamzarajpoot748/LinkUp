// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AppColors {
  static const buttonColor = Color(0XFF6F4CD8) ;
  static const h1 = Colors.black;
  static const h2 = Colors.blueGrey ;
  static const background = Color.fromARGB(255, 240, 239, 239) ;
  static const textDark = Colors.black ;
}
// 
// 
// 
// 
// Custom Text
class KText extends StatelessWidget {
  String text;
  Color? color;
  double? fontSize;
  FontWeight? fontWeight;
  KText({super.key, required this.text, this.color, this.fontSize, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,

    ),);
  }
}
// 
// 
// 

class Spacebetween extends StatelessWidget {
  double? width,height;
   Spacebetween({super.key, this.width,this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
// 
// 
// Custom TextFormFields
class TextFormFields extends StatefulWidget {
  String? hintText;
  BorderRadius? borderRadius ;
  Color? borderColor;
  Icon? prefixIcon;
  IconButton? suffixIcon;
  bool? obscure;
  VoidCallback? callback;
  IconButton? iconButton;



  TextFormFields({super.key, 
  this.hintText, 
  this.borderRadius,
  this.borderColor,
  this.prefixIcon,
  this.suffixIcon,
  this.obscure,
  this.callback,
  this.iconButton,
  
  });

  @override
  State<TextFormFields> createState() => _TextFormFieldsState();
}

class _TextFormFieldsState extends State<TextFormFields> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscure ?? false,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
        filled: true,
        fillColor: Colors.white,
        hoverColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            width: 2,
            color: Colors.grey,
          ),
        ),
      ),

    );
  }
}
// 
// 
// 
//
class Kbutton extends StatefulWidget {
  String? text;
   Kbutton({super.key, this.text});

  @override
  State<Kbutton> createState() => _KbuttonState();
}

class _KbuttonState extends State<Kbutton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.buttonColor,
      foregroundColor: Colors.white, // text color
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
        ),
        child: Text(widget.text!),
      ),
    );
  }
} 
// 
// 
// 
// Custom Divider
class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
  children: [
    Expanded(
      child: Divider(
        thickness: 1,
        color: Colors.grey,
      ),
    ),

    Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        "or continue with",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 14,
        ),
      ),
    ),

    Expanded(
      child: Divider(
        thickness: 1,
        color: Colors.grey,
      ),
    ),
  ],
);
  }
}
