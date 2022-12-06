import 'package:flutter/material.dart';
import 'package:flutter_base_sample/screens/auth/login/login_screen.dart';
import 'package:flutter_base_sample/themes/colors.dart';
import 'package:flutter_base_sample/widgets/button.widget.dart';
import 'package:flutter_base_sample/widgets/text_custom.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

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
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 63, bottom: 26),
                  child: TextCustom(
                    "Welcome to UpTodo",
                    size: 32,
                  ),
                ),
                SizedBox(
                  width: 287,
                  child: TextCustom(
                    "Please login to your account or create new account to continue",
                    size: 16,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 44),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                ButtonWidget(
                  label: "LOGIN",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const LoginScreen();
                        },
                      ),
                    );
                  },
                  type: ButtonType.elevation,
                  bottom: 10,
                ),
                ButtonWidget(
                  label: "CREATE ACCOUNT",
                  onPressed: () {},
                  type: ButtonType.outline,
                  bottom: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
