import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_base_sample/screens/onboarding/onboarding_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/assets.dart';
import '../../themes/fonts.dart';
import '../../widgets/text_custom.dart';

var timer;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    timer = Timer(
      const Duration(seconds: 1),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const OnboardingScreen();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AssetsIcon.checkboxIcon),
            TextCustom(
              "UpTodo",
              fontFamily: FontFamily.LatoBold,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }
}
