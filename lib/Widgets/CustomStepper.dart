import 'package:flutter/material.dart';
import 'package:myportfolio/Global/Colors.dart';
import 'package:myportfolio/Global/Constants.dart';
import 'package:myportfolio/Global/Fonts.dart';

class CustomStepper extends StatefulWidget {
  CustomStepper({super.key, this.customList});
  List<Map>? customList;

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        for (int i = 0; i < widget.customList!.length; i++)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: constraints.maxWidth >= AppConstants.kMaxDesktopWidth
                    ? MediaQuery.of(context).size.width / 2.5
                    : MediaQuery.of(context).size.width / 1.2,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(widget.customList![i]["img"]),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Flexible(
                      child: Text(widget.customList![i]["name"],
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.textbutton(
                              fontSize: constraints.maxWidth >=
                                      AppConstants.kMaxDesktopWidth
                                  ? 18
                                  : 14,
                              color: AppColors.bgColor2)),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 12),
                  Container(
                    margin: const EdgeInsets.only(left: 17, right: 17),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: const BoxDecoration(
                        border: Border(
                            left: BorderSide(
                      color: Colors.white,
                    ))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${widget.customList![i]["title"]}\n${widget.customList![i]["period"]}',
                          style: AppTextStyles.textbutton(
                              fontSize: 13, color: AppColors.white),
                        ),
                        // widget.customList![i]["description"] != null
                        //     ? SizedBox(
                        //         width: 400,
                        //         child: Text(
                        //           '${widget.customList![i]["description"]}',
                        //           style: AppTextStyles.footerText(
                        //               fontSize: 10, color: AppColors.white),
                        //         ),
                        //       )
                        //     : Text(''),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
      ]);
    });
  }
}
