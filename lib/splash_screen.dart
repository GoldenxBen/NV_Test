import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          'assets/images/nv_icon.svg',
          color: Color(0xff5f6c56),
          semanticsLabel: 'NV Icon',
          width: 152,
          height: 121,
        ),
      ),
    );
  }
}
