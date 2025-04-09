import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/Global/Colors.dart';
import 'package:myportfolio/Global/Constants.dart';
import 'package:myportfolio/Global/Fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
                      'Content Creator',
                      textStyle: AppTextStyles.textbutton(
                          fontSize: 40, color: AppColors.lawGreen),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 15,
              runSpacing: 15,
              alignment: WrapAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    await launchUrl(
                        Uri.parse(AppConstants.socialMediaLinks[0]));
                  },
                  child: Image.asset(
                    "assets/images/githubwhite.png",
                    width: 50,
                    height: 50,
                  ),
                ),

                GestureDetector(
                  onTap: () async {
                    await launchUrl(
                        Uri.parse(AppConstants.socialMediaLinks[1]));
                  },
                  child: Image.asset(
                    "assets/images/linkedin.png",
                    width: 50,
                    height: 50,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    await launchUrl(
                        Uri.parse(AppConstants.socialMediaLinks[2]));
                  },
                  child: Image.asset(
                    "assets/images/youtube.png",
                    width: 50,
                    height: 50,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    await launchUrl(
                        Uri.parse(AppConstants.socialMediaLinks[3]));
                  },
                  child: Image.asset(
                    "assets/images/instagram.png",
                    width: 50,
                    height: 50,
                  ),
                ),
                // GestureDetector(
                //   onTap: () {},
                //   child: Image.asset(
                //     "assets/images/resumedownload.png",
                //     width: 50,
                //     height: 50,
                //   ),
                // ),
              ],
            )
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
