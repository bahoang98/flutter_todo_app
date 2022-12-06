import 'package:flutter/material.dart';
import 'package:flutter_base_sample/themes/colors.dart';
import 'package:flutter_base_sample/widgets/text_custom.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({
    Key? key,
    this.hintText,
    this.label,
    this.onChange,
    this.title,
    this.top = 0,
    this.bottom = 0,
    this.obscureText,
  }) : super(key: key);

  final String? hintText;
  final String? label;
  final void Function(String value)? onChange;
  final String? title;
  final double? top;
  final double? bottom;
  final bool? obscureText;

  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  TextEditingController controller = TextEditingController();

  void _onChange(String value) {
    controller.text = value;
    if (widget.onChange != null) {
      widget.onChange!(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.top,
        ),
        SizedBox(
          width: double.infinity,
          height: 32,
          child: widget.title != null ? TextCustom(widget.title ?? "") : null,
        ),
        TextField(
          obscureText: widget.obscureText ?? false,
          controller: controller,
          onChanged: (value) => _onChange,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorDefine.primary, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorDefine.davyGrey, width: 1),
            ),
            hintStyle: TextStyle(color: ColorDefine.davyGrey),
            hintText: widget.hintText,
            labelText: widget.label,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          ),
          style: TextStyle(
            color: ColorDefine.white,
          ),
        ),
        SizedBox(
          height: widget.bottom,
        ),
      ],
    );
  }
}
