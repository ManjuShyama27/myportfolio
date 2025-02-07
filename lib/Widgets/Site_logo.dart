import 'package:flutter/material.dart';

class SiteLogo extends StatefulWidget {
  const SiteLogo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  State<SiteLogo> createState() => _SiteLogoState();
}

class _SiteLogoState extends State<SiteLogo> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage('assets/images/dash.png'),
      ),
    );
  }
}
