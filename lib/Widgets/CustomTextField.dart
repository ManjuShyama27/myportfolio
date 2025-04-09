import 'package:flutter/material.dart';
import 'package:myportfolio/Global/Colors.dart';
import 'package:myportfolio/Global/Fonts.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key, this.controller, this.maxLines = 1, this.hintText});
  final TextEditingController? controller;
  final int maxLines;
  final String? hintText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none),
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none),
          contentPadding: EdgeInsets.all(16),
          fillColor: AppColors.themeColor,
          hintText: widget.hintText,
          hintStyle: AppTextStyles.footerText(color: AppColors.bgColor)),
    );
  }
}
