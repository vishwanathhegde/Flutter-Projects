import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  ReusableCard({required this.color, required this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(15.0),
    );
  }
}
