import 'package:flutter/material.dart';
import 'package:myportfolio/Global/Colors.dart';
import 'package:myportfolio/Global/Fonts.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      color: AppColors.bgColor,
      child: Text(
        'Made by Manjushyama Singhania with Flutter 3.2',
        style: AppTextStyles.footerText(),
      ),
    );
  }
}
