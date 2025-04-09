import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/Global/Colors.dart';
import 'package:myportfolio/Global/Constants.dart';
import 'package:myportfolio/Global/Fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
        SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hey,',
              textAlign: TextAlign.start,
              style: AppTextStyles.textbutton(fontSize: 30),
            ),
            Text(
              textAlign: TextAlign.start,
              'I am Manjushyama Singhania',
              style: AppTextStyles.textbutton(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.start,
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
                      'Content Creator',
                      textStyle: AppTextStyles.textbutton(
                          fontSize: 20, color: AppColors.lawGreen),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    await launchUrl(
                        Uri.parse(AppConstants.socialMediaLinks[0]));
                  },
                  child: Image.asset(
                    "assets/images/githubwhite.png",
                    width: 30,
                    height: 30,
                  ),
                ),

                GestureDetector(
                  onTap: () async {
                    await launchUrl(
                        Uri.parse(AppConstants.socialMediaLinks[1]));
                  },
                  child: Image.asset(
                    "assets/images/linkedin.png",
                    width: 30,
                    height: 30,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    await launchUrl(
                        Uri.parse(AppConstants.socialMediaLinks[2]));
                  },
                  child: Image.asset(
                    "assets/images/youtube.png",
                    width: 30,
                    height: 30,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    await launchUrl(
                        Uri.parse(AppConstants.socialMediaLinks[3]));
                  },
                  child: Image.asset(
                    "assets/images/instagram.png",
                    width: 30,
                    height: 30,
                  ),
                ),

                // GestureDetector(
                //   onTap: () {},
                //   child: Image.asset(
                //     "assets/images/resumedownload.png",
                //     width: 30,
                //     height: 30,
                //   ),
                // ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
