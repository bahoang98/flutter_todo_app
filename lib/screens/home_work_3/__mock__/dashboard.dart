import 'package:flutter/material.dart';

class InfoItem {
  String title;
  String value;
  IconData icon;
  int id;

  InfoItem({
    required this.id,
    required this.title,
    required this.value,
    required this.icon,
  });
}

List<InfoItem> info = [
  InfoItem(
    id: 1,
    title: 'Gender',
    value: 'Female',
    icon: Icons.ac_unit_rounded,
  ),
  InfoItem(
    id: 2,
    title: 'Birthday',
    value: '08/05/1998',
    icon: Icons.calendar_today_outlined,
  ),
  InfoItem(
    id: 3,
    title: 'Email',
    value: 'hoangnb@vmodev.com',
    icon: Icons.email_outlined,
  ),
  InfoItem(
    id: 4,
    title: 'Phone Number',
    value: '+84 969090294',
    icon: Icons.phone_android_outlined,
  ),
  InfoItem(
    id: 5,
    title: 'Address',
    value: 'Ha Noi',
    icon: Icons.lock_outline,
  ),
];
