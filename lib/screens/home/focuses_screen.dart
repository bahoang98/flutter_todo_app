import 'package:flutter/material.dart';
import 'package:flutter_base_sample/constants/assets.dart';
import 'package:flutter_base_sample/themes/colors.dart';
import 'package:flutter_base_sample/themes/fonts.dart';
import 'package:flutter_base_sample/widgets/text_custom.dart';
import 'package:flutter_svg/svg.dart';

String uriAvatar =
    "https://lh3.googleusercontent.com/a/AEdFTp4BbIgHEx5Gm1hvZ7uLrUg4Yuc4HaMT75Ppf6j8=s1337";

class FocusesScreen extends StatefulWidget {
  const FocusesScreen({Key? key}) : super(key: key);

  @override
  _FocusesScreenState createState() => _FocusesScreenState();
}

class _FocusesScreenState extends State<FocusesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorDefine.black,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_arrow_down_sharp),
          ),
          title: const TextCustom("Focuses", size: 20),
          actions: [
            Container(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                onTap: () {},
                child: CircleAvatar(
                  child: ClipOval(
                    child: Image.network(uriAvatar),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: TextCustom(
          "Focuses Sceen",
          size: 40,
          fontFamily: FontFamily.LatoBold,
        ));
  }
}
