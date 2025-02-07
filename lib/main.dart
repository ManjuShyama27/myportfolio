import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/Global/Colors.dart';
import 'package:myportfolio/Global/Constants.dart';
import 'package:myportfolio/Global/Fonts.dart';
import 'package:myportfolio/Widgets/CustomStepper.dart';
import 'package:myportfolio/Widgets/desktop/homepage_desktop.dart';
import 'package:myportfolio/Widgets/mobile/EndDrawer.dart';
import 'package:myportfolio/Widgets/desktop/header_desktop.dart';
import 'package:myportfolio/Widgets/mobile/header_mobile.dart';
import 'package:myportfolio/Widgets/mobile/homepage_mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My Portfolio'),
      // initialRoute: '/',
      // routes: {
      //   '/aboutme': (context) => ,
      //   '/contactme': (context) => ProfileScreen(),
      //   '/myskills': (context) => ChooseQuizTypeScreen(),
      //   '/testimonials': (context) => LogoQuestionScreen()
      // },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
          endDrawer: constraints.maxWidth >= AppConstants.kMaxDesktopWidth
              ? null
              : EndDrawer(),
          key: scaffoldKey,
          backgroundColor: AppColors.bgColor,
          //appBar: AppBar(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //About me

              constraints.maxWidth >= AppConstants.kMaxDesktopWidth
                  ? HeaderDesktop(
                      onTap: () {},
                    )
                  : HeaderMobile(
                      onLogoTap: () {},
                      onMenuTap: () {
                        scaffoldKey.currentState?.openEndDrawer();
                      },
                    ),
              Container(
                width: double.maxFinite,
                height: 600,
                color: AppColors.bgColor,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      constraints.maxWidth >= AppConstants.kMaxDesktopWidth
                          ? HomePageDesktop()
                          : HomepageMobile()
                    ],
                  ),
                ),
              ),
              //Skills
              Container(
                  width: double.maxFinite,
                  height: 600,
                  color: AppColors.themeColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'ABOUT ME',
                        style: AppTextStyles.textbutton(fontSize: 30),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text('EDUCATION',
                                  style:
                                      AppTextStyles.textbutton(fontSize: 20)),
                              SizedBox(
                                height: 20,
                              ),
                              CustomStepper()
                            ],
                          ),
                          Column(
                            children: [
                              Text('WORK EXPERIENCE',
                                  style:
                                      AppTextStyles.textbutton(fontSize: 20)),
                              CustomStepper()
                            ],
                          )
                        ],
                      )
                    ],
                  )),
              Container(
                width: double.maxFinite,
                height: 600,
                color: AppColors.themeColor1,
              ),
              //Work Experience
              Container(
                width: double.maxFinite,
                height: 600,
                color: AppColors.lawGreen,
              ),
              //Education
              Container(
                width: double.maxFinite,
                height: 600,
                color: AppColors.bgColor,
              ),
              //Projects
              Container(
                width: double.maxFinite,
                height: 600,
                color: AppColors.themeColor,
              ),
              //Contact ME
              Container(
                width: double.maxFinite,
                height: 600,
                color: AppColors.lawGreen,
              ),
            ],
          ));
    });
  }
}
