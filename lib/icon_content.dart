import 'package:flutter/cupertino.dart';

class IconContent extends StatelessWidget {
  final String label;
  final IconData icon;
  static const labelTextStyle =
      TextStyle(fontSize: 18, color: Color(0xff8d8e98));
  IconContent({required this.label, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        icon,
        size: 80.0,
      ),
      SizedBox(
        height: 15.0,
      ),
      Text(label, style: labelTextStyle),
    ]);
  }
}
