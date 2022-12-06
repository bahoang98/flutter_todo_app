import 'package:flutter/material.dart';
import 'package:flutter_base_sample/constants/assets.dart';
import 'package:flutter_base_sample/screens/home/home.dart';
import 'package:flutter_base_sample/services/social.service.dart';
import 'package:flutter_base_sample/widgets/button.widget.dart';
import 'package:flutter_base_sample/widgets/input.widget.dart';
import 'package:flutter_base_sample/widgets/text_custom.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../themes/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GoogleSignInAccount? _currentUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // GoogleService().initListen((GoogleSignInAccount? account) {
    //   setState(() {
    //     _currentUser = account;
    //   });
    //   if (_currentUser != null) {
    //     GoogleService().handleGetContact(_currentUser!);
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: ColorDefine.black,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextCustom(
                      "Login",
                      size: 32,
                    ),
                  ),
                  InputWidget(
                    top: 40,
                    hintText: "Enter your Username",
                    title: "Username",
                  ),
                  InputWidget(
                    hintText: "Enter your Password",
                    title: "Password",
                    top: 25,
                    obscureText: true,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget(
                    label: "Login",
                    onPressed: () {},
                    type: ButtonType.elevation,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          // margin: const EdgeInsets.only(top: 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ColorDefine.davyGrey,
                            ),
                          ),
                        ),
                      ),
                      const TextCustom("  or  "),
                      Expanded(
                        child: Container(
                          height: 1,
                          // margin: const EdgeInsets.only(top: 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ColorDefine.davyGrey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    child: Column(
                      children: [
                        ButtonWidget(
                          label: "Login with Google",
                          onPressed: () {
                            GoogleService()
                                .handleSignIn((GoogleSignInAccount? user) {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return const HomeScreen();
                                  },
                                ),
                                (route) {
                                  return false;
                                },
                              );
                            });
                          },
                          type: ButtonType.outlineIcon,
                          icon: SvgPicture.asset(AssetsIcon.googleIcon),
                        ),
                        ButtonWidget(
                          top: 10,
                          label: "Login with Apple",
                          onPressed: () {},
                          type: ButtonType.outlineIcon,
                          icon: SvgPicture.asset(AssetsIcon.appleIcon),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextCustom(
              "Don’t have an account?",
              color: ColorDefine.spanishGray,
              size: 12,
            ),
            TextButton(
              onPressed: () {},
              child: const TextCustom(
                "Register",
                size: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
