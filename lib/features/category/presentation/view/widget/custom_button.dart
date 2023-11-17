import 'package:flutter/material.dart';
import 'package:khadamat/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.leftRadius, required this.rightRadius, required this.childText, required this.textColor, required this.backGroundColor, this.onPressed,}) : super(key: key);
final double leftRadius;
final double rightRadius;
final String childText;
  final Color textColor;
  final Color backGroundColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backGroundColor,
                shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(leftRadius),right: Radius.circular(rightRadius))
        )
        ),

          onPressed: onPressed,
          child: Text(
    childText,
            style: Styles.TextStyle15.copyWith(color: textColor)
          )
      ),
    );
  }
}
