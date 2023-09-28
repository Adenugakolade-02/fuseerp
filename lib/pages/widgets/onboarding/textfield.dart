// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:fuseerp/utils/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final Function(String) onChanged;
  FocusNode? node;
  CustomTextField({super.key, required this.labelText, required this.onChanged, this.node});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool hasNotEdited = true;

  @override
  Widget build(BuildContext context) {
    
    final TextTheme textTheme = Theme.of(context).textTheme;
    return TextField(
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: grey300,
            width: 1.2,
          )
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: grey300,
            width: 1.2
          )
        ),
        labelText: widget.labelText,
        labelStyle: textTheme.labelSmall!.copyWith(fontSize: 15),
      ),
      style: textTheme.labelLarge,
      cursorColor: grey300,
      focusNode: widget.node,
      textCapitalization: TextCapitalization.sentences,
      onSubmitted: (value){
        if(value.isNotEmpty && hasNotEdited){
          widget.onChanged(value);
          setState(() {
            hasNotEdited = false;
          });
          // hasNotEdited = false;
          // FocusScope.of(context).nextFocus();
        }
      },
    );
  }
}