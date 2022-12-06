import 'package:flutter/material.dart';
import 'package:flutter_base_sample/constants/assets.dart';
import 'package:flutter_base_sample/screens/onboarding/item_onboarding.dart';
import 'package:flutter_base_sample/screens/start/start_screen.dart';
import 'package:flutter_base_sample/themes/colors.dart';
import 'package:flutter_base_sample/widgets/text_custom.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _idxPageSelected = 0;
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: PageView(
                  physics: const ClampingScrollPhysics(),
                  controller: controller,
                  onPageChanged: (value) {
                    setState(() {
                      _idxPageSelected = value;
                    });
                  },
                  children: const [
                    ItemOnboarding(
                      onboardingImage: AssetsIcon.onboarding1,
                      title: "Manage your tasks",
                      description:
                          "You can easily manage all of your daily tasks in DoMe for free",
                    ),
                    ItemOnboarding(
                      onboardingImage: AssetsIcon.onboarding2,
                      title: "Create daily routine",
                      description:
                          "In Uptodo  you can create your personalized routine to stay productive",
                    ),
                    ItemOnboarding(
                      onboardingImage: AssetsIcon.onboarding3,
                      title: "Orgonaize your tasks",
                      description:
                          "You can organize your daily tasks by adding your tasks into separate categories",
                    ),
                    // ItemOnboarding()
                  ],
                ),
              ),
            ],
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 5,
                    width: 26,
                    decoration: BoxDecoration(
                      color: _idxPageSelected == 0
                          ? ColorDefine.white87
                          : ColorDefine.gray,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    height: 5,
                    width: 26,
                    decoration: BoxDecoration(
                      color: _idxPageSelected == 1
                          ? ColorDefine.white87
                          : ColorDefine.gray,
                    ),
                  ),
                  Container(
                    height: 5,
                    width: 26,
                    decoration: BoxDecoration(
                      color: _idxPageSelected == 2
                          ? ColorDefine.white87
                          : ColorDefine.gray,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              height: 120,
              width: screenSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: _idxPageSelected == 0
                        ? null
                        : () {
                            controller.animateToPage(
                              _idxPageSelected - 1,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          },
                    child: const TextCustom(
                      'BACK',
                    ),
                  ),
                  SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        backgroundColor: ColorDefine.primary,
                      ),
                      onPressed: () {
                        if (_idxPageSelected != 2) {
                          controller.animateToPage(
                            _idxPageSelected + 1,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (BuildContext context) {
                              return const StartScreen();
                            }),
                          );
                        }
                      },
                      child: TextCustom(
                        _idxPageSelected == 2 ? "Get Started" : "Next",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
