import 'package:flutter/material.dart';
import 'package:myportfolio/Global/Colors.dart';
import 'package:myportfolio/Global/Constants.dart';
import 'package:myportfolio/Global/Fonts.dart';
import 'package:myportfolio/Widgets/CustomTextField.dart';
import 'package:myportfolio/Widgets/Footer.dart';
import 'package:myportfolio/Widgets/MyWork.dart';
import 'package:myportfolio/Widgets/desktop/aboutme_desktop.dart';
import 'package:myportfolio/Widgets/desktop/homepage_desktop.dart';
import 'package:myportfolio/Widgets/mobile/EndDrawer.dart';
import 'package:myportfolio/Widgets/desktop/header_desktop.dart';
import 'package:myportfolio/Widgets/mobile/aboutme_mobile.dart';
import 'package:myportfolio/Widgets/mobile/header_mobile.dart';
import 'package:myportfolio/Widgets/mobile/homepage_mobile.dart';
import 'package:url_launcher/url_launcher.dart';

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
  final scrollController = ScrollController();
  final TextEditingController message = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();

  final List<GlobalKey> navBarKeys = List.generate(6, (index) => GlobalKey());
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
          endDrawer: constraints.maxWidth >= AppConstants.kMaxDesktopWidth
              ? null
              : EndDrawer(
                  onNavItemTap: (int navIndex) {
                    scaffoldKey.currentState?.closeEndDrawer();
                    scrollToSection(navIndex);
                  },
                ),
          key: scaffoldKey,
          backgroundColor: AppColors.bgColor,
          //appBar: AppBar(),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key: navBarKeys.first),
                //About me

                constraints.maxWidth >= AppConstants.kMaxDesktopWidth
                    ? HeaderDesktop(
                        onTap: () {},
                        onNavMenuTap: (int navIndex) {
                          scrollToSection(navIndex);
                        })
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
                //About me
                Container(
                    key: navBarKeys[1],
                    width: double.maxFinite,
                    height:
                        constraints.maxWidth >= AppConstants.kMaxDesktopWidth
                            ? 900
                            : 1300,
                    color: AppColors.themeColor1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'ABOUT ME',
                          style: AppTextStyles.textbutton(
                              fontSize: constraints.maxWidth >=
                                      AppConstants.kMaxDesktopWidth
                                  ? 40
                                  : 20,
                              color: AppColors.bgColor),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        constraints.maxWidth >= AppConstants.kMaxDesktopWidth
                            ? AboutMeDesktop()
                            : AboutMeMobile()
                      ],
                    )),
                //Skills
                Container(
                    key: navBarKeys[2],
                    width: double.maxFinite,
                    height:
                        constraints.maxWidth >= AppConstants.kMaxDesktopWidth
                            ? 300
                            : 400,
                    color: AppColors.lawGreen,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('MY SKILLS',
                            style: AppTextStyles.textbutton(
                                fontSize: constraints.maxWidth >=
                                        AppConstants.kMaxDesktopWidth
                                    ? 40
                                    : 20,
                                color: AppColors.bgColor)),
                        Flexible(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 900),
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              runSpacing: 5,
                              spacing: 5,
                              children: [
                                for (int i = 0;
                                    i < AppConstants.skillItems.length;
                                    i++)
                                  Chip(
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    // backgroundColor:
                                    //     AppColors.bgColor.withValues(alpha: 0.5),
                                    label: Text(
                                        AppConstants.skillItems[i]["title"]),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    avatar: CircleAvatar(
                                        radius: 20,
                                        backgroundImage: AssetImage(
                                            AppConstants.skillItems[i]["img"])),
                                  )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    )),
                //My Work
                Container(
                    key: navBarKeys[3],
                    width: double.maxFinite,
                    height:
                        constraints.maxWidth >= AppConstants.kMaxDesktopWidth
                            ? 7000
                            : 4200,
                    color: AppColors.bgColor,
                    child: MyWork()),
                //Recommendations
                Container(
                  key: navBarKeys[4],
                  width: double.maxFinite,
                  height: 600,
                  color: AppColors.lawGreen,
                  child: Column(
                    children: [
                      Text('RECOMMENDATIONS',
                          style: AppTextStyles.textbutton(
                              fontSize: constraints.maxWidth >=
                                      AppConstants.kMaxDesktopWidth
                                  ? 40
                                  : 20,
                              color: AppColors.bgColor)),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            for (int i = 0;
                                i < AppConstants.recommendations.length;
                                i++)
                              GestureDetector(
                                onTap: () async {
                                  await launchUrl(Uri.parse(
                                      AppConstants.recommendations[i]["link"]));
                                },
                                child: Card(
                                  color: AppColors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          AppConstants.recommendations[i]
                                              ['message'],
                                          style: AppTextStyles.footerText(
                                              fontSize: 12,
                                              color: AppColors.bgColor),
                                        ),
                                        Divider(
                                          color: Colors.transparent,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              AppConstants.recommendations[i]
                                                  ['by'],
                                              textAlign: TextAlign.end,
                                              style: AppTextStyles.textbutton(
                                                  fontSize: 13,
                                                  color: AppColors.bgColor),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //Contact ME
                Container(
                  key: navBarKeys[5],
                  width: double.maxFinite,
                  height: 600,
                  color: AppColors.themeColor2,
                  child: Padding(
                    padding:
                        constraints.maxWidth >= AppConstants.kMaxDesktopWidth
                            ? EdgeInsets.fromLTRB(50, 10, 50, 10)
                            : EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('CONTACT ME',
                            style: AppTextStyles.textbutton(
                                fontSize: constraints.maxWidth >=
                                        AppConstants.kMaxDesktopWidth
                                    ? 40
                                    : 20,
                                color: AppColors.bgColor)),
                        SizedBox(height: 20),
                        constraints.maxWidth >= AppConstants.kMaxDesktopWidth
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Flexible(
                                      child: CustomTextField(
                                    controller: name,
                                    hintText: "Your name",
                                  )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Flexible(
                                      child: CustomTextField(
                                    controller: email,
                                    hintText: "Your email",
                                  ))
                                ],
                              )
                            : Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomTextField(
                                    controller: name,
                                    hintText: "Your name",
                                  ),
                                  Divider(
                                    color: Colors.transparent,
                                  ),
                                  CustomTextField(
                                    controller: email,
                                    hintText: "Your email",
                                  )
                                ],
                              ),
                        Divider(
                          color: Colors.transparent,
                        ),
                        Flexible(
                            child: CustomTextField(
                          controller: message,
                          hintText: "Your message",
                          maxLines: 7,
                        )),
                        SizedBox(height: 20),
                        // SizedBox(
                        //   width: 350,
                        //   height: 50,
                        //   child: ElevatedButton(
                        //     onPressed: () async {
                        //       if (await canLaunchUrl(Uri.parse(
                        //           "https://wa.me/${AppConstants.phone.toString()}?text=Name:${name.text.toString()}\nEmail:${email.text.toString()}\n${message.text.toString()}"))) {
                        //         await launchUrl(Uri.parse(
                        //             "https://wa.me/${AppConstants.phone.toString()}?text=Name:${name.text.toString()}\nEmail:${email.text.toString()}\n${message.text.toString()}"));
                        //       } else {
                        //         throw 'Could not launch';
                        //       }
                        //     },
                        //     style: ElevatedButton.styleFrom(
                        //         backgroundColor: AppColors.bgColor),
                        //     child: Text(
                        //       'GET IN TOUCH',
                        //       style: AppTextStyles.textbutton(),
                        //     ),
                        //   ),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.mail,
                                size: 40,
                              ),
                              onPressed: () async {
                                if (await canLaunchUrl(Uri.parse(
                                    "mailto:${AppConstants.email.toString()}?body=${message.text.toString()}&subject=Flutter Enquiry"))) {
                                  await launchUrl(Uri.parse(
                                      "mailto:${AppConstants.email.toString()}?body=${message.text.toString()}&subject=Flutter Enquiry"));
                                } else {
                                  throw 'Could not Send Mail';
                                }
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.message, size: 40),
                              onPressed: () async {
                                if (await canLaunchUrl(Uri.parse(
                                    "https://wa.me/${AppConstants.phone.toString()}?text=Name:${name.text.toString()}\nEmail:${email.text.toString()}\n${message.text.toString()}"))) {
                                  await launchUrl(Uri.parse(
                                      "https://wa.me/${AppConstants.phone.toString()}?text=Name:${name.text.toString()}\nEmail:${email.text.toString()}\n${message.text.toString()}"));
                                } else {
                                  throw 'Could not launch';
                                }
                              },
                            )
                          ],
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (int i = 0;
                                  i < AppConstants.videos.length;
                                  i++)
                                GestureDetector(
                                  onTap: () async {
                                    await launchUrl(Uri.parse(
                                        AppConstants.videos[i]["link"]));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 15.0),
                                    child: SizedBox(
                                      width: 270,
                                      height: 200,
                                      child: Card(
                                        color: AppColors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight:
                                                      Radius.circular(20)),
                                              child: Image.asset(
                                                  fit: BoxFit.fill,
                                                  height: 150,
                                                  AppConstants.videos[i]
                                                      ['img']),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomRight:
                                                              Radius.circular(
                                                                  20),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  20))),
                                              // color: AppColors.white,
                                              child: Center(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(1.0),
                                                  child: Text(
                                                    AppConstants.videos[i]
                                                        ['title'],
                                                    textAlign: TextAlign.center,
                                                    style: AppTextStyles
                                                        .textbutton(
                                                            fontSize: 10,
                                                            color: AppColors
                                                                .bgColor),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //Footer
                Footer(),
              ],
            ),
          ));
    });
  }

  void scrollToSection(int navIndex) {
    final key = navBarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
