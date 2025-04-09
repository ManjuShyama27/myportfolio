import 'package:flutter/material.dart';
import 'package:myportfolio/Global/Colors.dart';
import 'package:myportfolio/Global/Constants.dart';
import 'package:myportfolio/Global/Fonts.dart';
import 'package:myportfolio/Global/Styles.dart';
import 'package:myportfolio/Widgets/Site_logo.dart';

class HeaderDesktop extends StatefulWidget {
  const HeaderDesktop({super.key, this.onTap, required this.onNavMenuTap});
  final VoidCallback? onTap;
  final Function(int) onNavMenuTap;

  @override
  State<HeaderDesktop> createState() => _HeaderDesktopState();
}

class _HeaderDesktopState extends State<HeaderDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kDecorationHeader,
      width: double.maxFinite,
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          SiteLogo(
            onTap: widget.onTap,
          ),
          Spacer(),
          for (int i = 0; i <= 5; i++)
            TextButton(
              child: Text(
                AppConstants.navTitleNames[i],
                style: AppTextStyles.textbutton(),
              ),
              onPressed: () {
                widget.onNavMenuTap(i);
              },
            )
        ],
      ),
    );
  }
}
