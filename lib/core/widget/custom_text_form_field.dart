import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.suffixIcon,
    this.controller,
    this.hintText,
    this.onChanged,
    this.obscureText, this.validator,
  }) : super(key: key);
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? hintText;
  final void Function(String)? onChanged;
  final bool? obscureText;
  final bool? validator;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: TextFormField(
        maxLines: 1,
        obscureText: obscureText ?? false,
        controller: controller,
        onChanged: onChanged,
        validator: (value) {
          if(validator == true){
            if (value?.isEmpty ?? true) {
              return 'field is required';
            }
            }
          return null;
        },

        style: const TextStyle(
          color: Colors.white,
        ),
        cursorColor: KSecondaryColor,
        decoration: buildInputDecoration(),
      ),
    );
  }

  InputDecoration buildInputDecoration() {
    return InputDecoration(
        border: buildOutlineInputBorder(Colors.white,),
        enabledBorder: buildOutlineInputBorder(Colors.white,),
        focusedBorder: buildOutlineInputBorder(KSecondaryColor,),
        suffixIcon: suffixIcon,
        suffixIconColor: Colors.white,
        hintText: hintText);
  }

  OutlineInputBorder buildOutlineInputBorder(Color color) =>  OutlineInputBorder(
        borderSide: BorderSide(color: color, width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(50)),
      );
}
