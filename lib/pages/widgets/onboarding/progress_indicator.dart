import 'package:flutter/material.dart';
import 'package:fuseerp/utils/app_colors.dart';

class KProgressIndicator extends StatefulWidget {
  final int value;
  const KProgressIndicator({super.key, required this.value});

  @override
  State<KProgressIndicator> createState() => _KProgressIndicatorState();
}

class _KProgressIndicatorState extends State<KProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
        CircularProgressIndicator(
          color: primaryColor1,
          backgroundColor: primary200,
          value: widget.value==9 ? 1.0 : (widget.value)/10,
          strokeWidth: 5,
        ),

        Positioned(
          left: 12,
          top: 13,
          child: Text(
            "${widget.value}/9",
            style: textTheme.displayLarge!.copyWith(fontSize: 8, color: textColor3),
          ))
      ],
    );
  }
}