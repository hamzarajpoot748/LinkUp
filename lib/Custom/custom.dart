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
  String? labelText,hintText;
  BorderRadius? borderRadius;
  Color? borderColor;
  Icon? prefixIcon;
  Icon? suffixIcon;



  TextFormFields({super.key, 
  this.labelText,
  this.hintText, 
  this.borderRadius,
  this.borderColor,
  this.prefixIcon,
  this.suffixIcon,
  
  });

  @override
  State<TextFormFields> createState() => _TextFormFieldsState();
}

class _TextFormFieldsState extends State<TextFormFields> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderRadius: widget.borderRadius!,
          borderSide: BorderSide(
            color: widget.borderColor!,
            width: 2,
          ),
        ),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),

    );
  }
}