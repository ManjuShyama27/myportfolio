import 'package:flutter/material.dart';
import 'package:myportfolio/Global/Colors.dart';
import 'package:myportfolio/Global/Constants.dart';
import 'package:myportfolio/Global/Fonts.dart';

class MyWork extends StatefulWidget {
  const MyWork({super.key});

  @override
  State<MyWork> createState() => _MyWorkState();
}

class _MyWorkState extends State<MyWork> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 20,
            ),
            Text('WORK PROJECTS',
                style: AppTextStyles.textbutton(
                    fontSize:
                        constraints.maxWidth >= AppConstants.kMaxDesktopWidth
                            ? 40
                            : 20,
                    color: AppColors.white)),
            SizedBox(
              height: 20,
            ),
            for (int i = 0; i < AppConstants.workItems.length; i++)
              Padding(
                padding: constraints.maxWidth >= AppConstants.kMaxDesktopWidth
                    ? EdgeInsets.only(top: 20.0, bottom: 20)
                    : EdgeInsets.only(top: 10.0, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      AppConstants.workItems[i]["title"],
                      style: AppTextStyles.textbutton(
                          fontSize: constraints.maxWidth >=
                                  AppConstants.kMaxDesktopWidth
                              ? 30
                              : 20,
                          color: AppColors.themeColor),
                    ),
                    Image.asset(
                      AppConstants.workItems[i]["img"],
                      width:
                          constraints.maxWidth >= AppConstants.kMaxDesktopWidth
                              ? 900
                              : (MediaQuery.of(context).size.width) - 20,
                      height:
                          constraints.maxWidth >= AppConstants.kMaxDesktopWidth
                              ? 430
                              : 280,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10.0, right: 5, left: 5),
                      child: Text(
                        AppConstants.workItems[i]["description"],
                        textAlign: TextAlign.center,
                        style: AppTextStyles.subHeading(
                            fontSize: constraints.maxWidth >=
                                    AppConstants.kMaxDesktopWidth
                                ? 15
                                : 12,
                            color: AppColors.white),
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(
              height: 40,
            ),
            Text('HOBBY/COLLEGE PROJECTS',
                style: AppTextStyles.textbutton(
                    fontSize:
                        constraints.maxWidth >= AppConstants.kMaxDesktopWidth
                            ? 40
                            : 20,
                    color: AppColors.white)),
            SizedBox(
              height: 10,
            ),
            for (int i = 0; i < AppConstants.hobbyItems.length; i++)
              Padding(
                padding: constraints.maxWidth >= AppConstants.kMaxDesktopWidth
                    ? EdgeInsets.only(top: 20.0, bottom: 20)
                    : EdgeInsets.only(top: 10.0, bottom: 10),
                child: Card(
                  color: AppColors.bgColor2,
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 5.0, right: 5, top: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          AppConstants.hobbyItems[i]["title"],
                          style: AppTextStyles.textbutton(
                              fontSize: constraints.maxWidth >=
                                      AppConstants.kMaxDesktopWidth
                                  ? 30
                                  : 20,
                              color: AppColors.themeColor),
                        ),
                        Image.asset(
                          AppConstants.hobbyItems[i]["img"],
                          width: constraints.maxWidth >=
                                  AppConstants.kMaxDesktopWidth
                              ? 900
                              : (MediaQuery.of(context).size.width) - 20,
                          height: constraints.maxWidth >=
                                  AppConstants.kMaxDesktopWidth
                              ? 430
                              : 280,
                        ),
                        SizedBox(
                          width: constraints.maxWidth >=
                                  AppConstants.kMaxDesktopWidth
                              ? 900
                              : (MediaQuery.of(context).size.width) - 20,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, right: 5, left: 5),
                            child: Text(
                              AppConstants.hobbyItems[i]["description"],
                              textAlign: TextAlign.center,
                              style: AppTextStyles.subHeading(
                                  fontSize: constraints.maxWidth >=
                                          AppConstants.kMaxDesktopWidth
                                      ? 15
                                      : 12,
                                  color: AppColors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            SizedBox(
              height: 40,
            )
          ]);
    });
  }
}
