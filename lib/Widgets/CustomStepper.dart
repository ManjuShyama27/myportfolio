import 'package:flutter/material.dart';
import 'package:myportfolio/Global/Fonts.dart';

class CustomStepper extends StatefulWidget {
  const CustomStepper({super.key});

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              //backgroundImage: AssetImage(),
            ),
            SizedBox(
              width: 10,
            ),
            Text('ASIAN PAINTS', style: AppTextStyles.textbutton(fontSize: 16)),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 12),
            Container(
              margin: const EdgeInsets.only(left: 17, right: 17),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: const BoxDecoration(
                  border: Border(
                      left: BorderSide(
                color: Colors.white,
              ))),
              child: Text(
                'Systems Executive II \nJan 2023 - Sep 2024',
                style: AppTextStyles.textbutton(fontSize: 13),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
