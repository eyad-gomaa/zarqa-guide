

import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({Key? key, required this.onTap, required this.text, this.width = 160, this.height = 60}) : super(key: key);
  final void Function()? onTap;
  final String text;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width! ,
        height: height!,
        decoration: BoxDecoration(
            color: const Color(0xff2d54ee),
            borderRadius: BorderRadius.circular(30)
        ),
        child:  Center(child: Text(text,style: Styles.TextStyle20,)),
      ),
    );
  }
}
