import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/Global/Colors.dart';
import 'package:myportfolio/Global/Fonts.dart';

class HomepageMobile extends StatefulWidget {
  const HomepageMobile({super.key});

  @override
  State<HomepageMobile> createState() => _HomepageMobileState();
}

class _HomepageMobileState extends State<HomepageMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 90,
          backgroundImage: AssetImage('assets/images/myphoto.png'),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hey,',
              style: AppTextStyles.textbutton(fontSize: 30),
            ),
            Text(
              'I am Manjushyama Singhania',
              style: AppTextStyles.textbutton(fontSize: 15),
            ),
            Row(
              children: [
                Text(
                  'I am a ',
                  style: AppTextStyles.textbutton(fontSize: 20),
                ),
                AnimatedTextKit(
                  totalRepeatCount: 10000,
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                  animatedTexts: [
                    TyperAnimatedText(
                      'Flutter Developer',
                      textStyle: AppTextStyles.textbutton(
                          fontSize: 20, color: AppColors.lawGreen),
                    ),
                    TyperAnimatedText('Freelancer',
                        textStyle: AppTextStyles.textbutton(
                            fontSize: 20, color: AppColors.lawGreen)),
                    TyperAnimatedText(
                      'YouTuber',
                      textStyle: AppTextStyles.textbutton(
                          fontSize: 20, color: AppColors.lawGreen),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
