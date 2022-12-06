import 'package:flutter/material.dart';
import 'package:flutter_base_sample/themes/fonts.dart';
import 'package:flutter_base_sample/widgets/text_custom.dart';
import 'package:flutter_svg/svg.dart';

class ItemOnboarding extends StatelessWidget {
  final String onboardingImage;
  final String title;
  final String description;

  const ItemOnboarding({
    Key? key,
    required this.onboardingImage,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              onboardingImage,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextCustom(
                  title,
                  fontFamily: FontFamily.LatoBold,
                  size: 32,
                ),
                SizedBox(
                  width: 299,
                  child: TextCustom(
                    textAlign: TextAlign.center,
                    description,
                    size: 16,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
