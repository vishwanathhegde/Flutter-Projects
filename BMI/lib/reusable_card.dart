import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  // final VoidCallback onpress;
  final Function() onpress;
  ReusableCard(
      {required this.color, required this.cardChild, required this.onpress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(15.0),
      ),
      onTap: onpress,
    );
  }
}
