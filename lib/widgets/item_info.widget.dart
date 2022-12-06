import 'package:flutter/material.dart';

class ItemInfoWidget extends StatelessWidget {
  final String title;
  final String value;
  final Widget icon;
  const ItemInfoWidget(
      {key, required this.title, required this.value, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              icon,
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                value,
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              const SizedBox(
                width: 15,
              )
            ],
          ),
        ],
      ),
    );
  }
}
