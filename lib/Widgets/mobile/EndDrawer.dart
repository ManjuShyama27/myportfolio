import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/Global/Colors.dart';
import 'package:myportfolio/Global/Constants.dart';
import 'package:myportfolio/Global/Fonts.dart';

class EndDrawer extends StatefulWidget {
  const EndDrawer({super.key, required this.onNavItemTap});
  final Function(int) onNavItemTap;

  @override
  State<EndDrawer> createState() => _EndDrawerState();
}

class _EndDrawerState extends State<EndDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.bgColor,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  color: AppColors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          for (int i = 0; i < AppConstants.navTitleNames.length; i++)
            GestureDetector(
              onTap: () {
                widget.onNavItemTap(i);
              },
              child: ListTile(
                title: Text(AppConstants.navTitleNames[i]),
                leading: Icon(AppConstants.navTitleIcons[i]),
                iconColor: AppColors.white,
                titleTextStyle: AppTextStyles.textbutton(),
              ),
            )
        ],
      ),
    );
  }
}
