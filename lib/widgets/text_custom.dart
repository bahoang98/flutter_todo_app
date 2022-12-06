import 'package:flutter/material.dart';
import 'package:flutter_base_sample/themes/colors.dart';
import 'package:flutter_base_sample/themes/fonts.dart';

class TextCustom extends StatelessWidget {
  final String content;
  final double? size;
  final String? fontFamily;
  final Color? color;
  final TextAlign? textAlign;

  const TextCustom(
    this.content, {
    super.key,
    this.fontFamily,
    this.size,
    this.color,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        fontSize: size ?? 16,
        fontFamily: fontFamily ?? FontFamily.LatoRegular,
        color: color ?? ColorDefine.white,
      ),
    );
  }
}
