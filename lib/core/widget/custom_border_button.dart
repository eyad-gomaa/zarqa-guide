import 'package:flutter/material.dart';

import '../../constants.dart';
import '../utils/styles.dart';

class CustomBorderButton extends StatelessWidget {
  const CustomBorderButton({Key? key, required this.onTap}) : super(key: key);
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160 ,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: KSecondaryColor,width: 3 )
        ),
        child: Center(child: Text("Sign Up",style: Styles.TextStyle20.copyWith(color: KSecondaryColor),)),
      ),
    );
  }
}
