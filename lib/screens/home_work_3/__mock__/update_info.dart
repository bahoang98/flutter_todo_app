class InputConfigItem {
  String label;
  String? hintText;
  int id;

  InputConfigItem({
    required this.label,
    required this.id,
    this.hintText,
  });
}

List<InputConfigItem> inputConfig = [
  InputConfigItem(id: 1, label: 'Email', hintText: 'jane@example.com'),
  InputConfigItem(id: 2, label: 'Password'),
  InputConfigItem(id: 3, label: 'Gender'),
  InputConfigItem(id: 4, label: 'Birthday'),
  InputConfigItem(id: 5, label: 'Phone Number'),
  InputConfigItem(id: 5, label: 'Address'),
];
