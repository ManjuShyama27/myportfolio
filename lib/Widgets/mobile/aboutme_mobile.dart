import 'package:flutter/material.dart';
import 'package:myportfolio/Global/Colors.dart';
import 'package:myportfolio/Global/Constants.dart';
import 'package:myportfolio/Global/Fonts.dart';
import 'package:myportfolio/Widgets/CustomStepper.dart';

class AboutMeMobile extends StatefulWidget {
  const AboutMeMobile({super.key});

  @override
  State<AboutMeMobile> createState() => _AboutMeMobileState();
}

class _AboutMeMobileState extends State<AboutMeMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            color: AppColors.themeColor,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('EDUCATION',
                      style: AppTextStyles.textbutton(
                          fontSize: 16, color: AppColors.bgColor2)),
                  SizedBox(
                    height: 10,
                  ),
                  CustomStepper(
                    customList: AppConstants.eduStepList,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            color: AppColors.themeColor,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text('WORK EXPERIENCE',
                      style: AppTextStyles.textbutton(
                          fontSize: 16, color: AppColors.bgColor2)),
                  SizedBox(
                    height: 10,
                  ),
                  CustomStepper(
                    customList: AppConstants.workstepList,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
