import 'package:flutter/material.dart';
import 'package:myportfolio/Global/Styles.dart';
import 'package:myportfolio/Widgets/Site_logo.dart';

class HeaderMobile extends StatefulWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  State<HeaderMobile> createState() => _HeaderMobileState();
}

class _HeaderMobileState extends State<HeaderMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kDecorationHeader,
      width: double.maxFinite,
      height: 60,
      margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
      child: Row(
        children: [
          SiteLogo(
            onTap: widget.onLogoTap,
          ),
          Spacer(),
          IconButton(onPressed: widget.onMenuTap, icon: Icon(Icons.menu)),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
