import 'package:flutter/material.dart';
import 'package:myportfolio/Global/Colors.dart';
import 'package:myportfolio/Global/Constants.dart';
import 'package:myportfolio/Global/Fonts.dart';
import 'package:myportfolio/Widgets/CustomStepper.dart';

class AboutMeDesktop extends StatefulWidget {
  const AboutMeDesktop({super.key});

  @override
  State<AboutMeDesktop> createState() => _AboutMeDesktopState();
}

class _AboutMeDesktopState extends State<AboutMeDesktop> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 750,
          width: (MediaQuery.of(context).size.width / 2) - 50,
          child: Card(
            color: AppColors.themeColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Text('EDUCATION',
                      style: AppTextStyles.textbutton(
                          fontSize: 20, color: AppColors.bgColor2)),
                  SizedBox(
                    height: 20,
                  ),
                  CustomStepper(
                    customList: AppConstants.eduStepList,
                  ),
                  SizedBox(
                    height: 90,
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 750,
          width: (MediaQuery.of(context).size.width / 2) - 50,
          child: Card(
            color: AppColors.themeColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Text('WORK EXPERIENCE',
                      style: AppTextStyles.textbutton(
                          fontSize: 20, color: AppColors.bgColor2)),
                  SizedBox(
                    height: 20,
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
