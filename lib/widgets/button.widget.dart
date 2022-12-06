import 'package:flutter/material.dart';
import 'package:flutter_base_sample/widgets/text_custom.dart';

import '../themes/colors.dart';

enum ButtonType { elevation, outline, outlineIcon }

Widget getButton(ButtonType type, String? label, void Function() onPressed,
    bool? disabled, Widget? icon) {
  switch (type) {
    case ButtonType.elevation:
      {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorDefine.primary,
            padding: const EdgeInsets.symmetric(vertical: 10),
          ),
          onPressed: disabled == true ? null : onPressed,
          child: TextCustom(
            label ?? "",
          ),
        );
      }

    case ButtonType.outline:
      {
        return OutlinedButton(
          style: OutlinedButton.styleFrom(
              side: BorderSide(color: ColorDefine.primary, width: 2),
              padding: const EdgeInsets.symmetric(vertical: 10)),
          onPressed: disabled == true ? null : onPressed,
          child: TextCustom(
            label ?? "",
          ),
        );
      }

    case ButtonType.outlineIcon:
      {
        return OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
              side: BorderSide(color: ColorDefine.primary, width: 2),
              padding: const EdgeInsets.symmetric(vertical: 10)),
          onPressed: disabled == true ? null : onPressed,
          label: TextCustom(
            label ?? "",
          ),
          icon: icon ?? const Icon(Icons.radio_button_checked),
        );
      }

    default:
      {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorDefine.primary,
            padding: const EdgeInsets.symmetric(vertical: 10),
          ),
          onPressed: disabled == true ? null : onPressed,
          child: const TextCustom(
            "LOGIN",
          ),
        );
      }
  }
}

class ButtonWidget extends StatelessWidget {
  final String label;
  final double? top;
  final double? bottom;
  final ButtonType type;
  final void Function() onPressed;
  final bool? disabled;
  final Widget? icon;

  const ButtonWidget({
    Key? key,
    required this.label,
    this.bottom = 0,
    this.top = 0,
    this.disabled = false,
    this.icon,
    required this.onPressed,
    required this.type,
  }) : super(key: key);
// const ButtonWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: top,
        ),
        SizedBox(
          width: double.infinity,
          child: getButton(
            type,
            label,
            onPressed,
            disabled,
            icon,
          ),
        ),
        SizedBox(
          height: bottom,
        ),
      ],
    );
  }
}
