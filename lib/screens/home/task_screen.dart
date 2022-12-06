import 'package:flutter/material.dart';
import 'package:flutter_base_sample/constants/assets.dart';
import 'package:flutter_base_sample/themes/colors.dart';
import 'package:flutter_base_sample/widgets/text_custom.dart';
import 'package:flutter_svg/svg.dart';

String uriAvatar =
    "https://lh3.googleusercontent.com/a/AEdFTp4BbIgHEx5Gm1hvZ7uLrUg4Yuc4HaMT75Ppf6j8=s1337";

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorDefine.black,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.keyboard_arrow_down_sharp),
        ),
        title: const TextCustom("Index", size: 20),
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
      body: Column(
        children: [
          const SizedBox(
            height: 90,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AssetsIcon.taskIcon),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const TextCustom(
            "What do you want to do today?",
            size: 20,
          ),
          const SizedBox(
            height: 10,
          ),
          const TextCustom("Tap + to add your tasks")
        ],
      ),
    );
  }
}
