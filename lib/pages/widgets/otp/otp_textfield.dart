import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fuseerp/utils/app_colors.dart';

class OTPField extends StatelessWidget {
  final TextEditingController controller;
  bool hasFocus;
  OTPField({super.key, required this.controller, this.hasFocus=false});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: 12,
      width: 12,
      child: TextField(
        controller: controller,
        autofocus: hasFocus,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.top,
        maxLength: 1,
        keyboardType: TextInputType.none,
        showCursor: false,
        obscureText: true,
        scrollPadding: const EdgeInsets.all(0),
        obscuringCharacter: '●',
        style: const TextStyle(color: Color(0xFF2563EB), fontSize: 15),
        decoration:  InputDecoration(
          filled: controller.text.isEmpty ? false : true,
          fillColor: primaryColor1,
          counterText: '',
          contentPadding: const EdgeInsets.all(0),
          focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: primary400
            )
          ),
          enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: primary400
            )
          ),

        ),
        onChanged: (value){
          if(value.length == 1){
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}