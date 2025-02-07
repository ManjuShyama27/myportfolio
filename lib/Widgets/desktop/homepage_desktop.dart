import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/Global/Colors.dart';
import 'package:myportfolio/Global/Fonts.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({super.key});

  @override
  State<HomePageDesktop> createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hey,',
              style: AppTextStyles.textbutton(fontSize: 50),
            ),
            Text(
              'I am Manjushyama Singhania',
              style: AppTextStyles.textbutton(fontSize: 40),
            ),
            Row(
              children: [
                Text(
                  'I am a ',
                  style: AppTextStyles.textbutton(fontSize: 40),
                ),
                AnimatedTextKit(
                  totalRepeatCount: 10000,
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                  animatedTexts: [
                    TyperAnimatedText(
                      'Flutter Developer',
                      textStyle: AppTextStyles.textbutton(
                          fontSize: 40, color: AppColors.lawGreen),
                    ),
                    TyperAnimatedText('Freelancer',
                        textStyle: AppTextStyles.textbutton(
                            fontSize: 40, color: AppColors.lawGreen)),
                    TyperAnimatedText(
                      'YouTuber',
                      textStyle: AppTextStyles.textbutton(
                          fontSize: 40, color: AppColors.lawGreen),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        CircleAvatar(
          radius: 150,
          backgroundImage: AssetImage('assets/images/myphoto.png'),
        ),
      ],
    );
  }
}
