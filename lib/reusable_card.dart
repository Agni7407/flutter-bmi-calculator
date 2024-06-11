import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReusableCont extends StatelessWidget {
  ReusableCont({required this.Colour, this.cardChild, this.onPress});
  final Color Colour;
  Widget? cardChild;
  late Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colour, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
