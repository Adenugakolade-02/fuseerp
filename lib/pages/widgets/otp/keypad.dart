import 'package:flutter/material.dart';
import 'package:fuseerp/utils/app_colors.dart';

class NumericKeypad extends StatefulWidget {
  final Function(String) input;
  final Function() delete;

  const NumericKeypad(
      {super.key ,required this.input, required this.delete});

  @override
  State<NumericKeypad> createState() => _NumericKeypadState();
}

class _NumericKeypadState extends State<NumericKeypad> {
  // late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    // _controller = widget.controller;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64),
      child: Column(
        children: [
          Row(
            children: [
              _buildButton('1'),
              _buildButton('2'),
              _buildButton('3'),
            ],
          ),
          Row(
            children: [
              _buildButton('4'),
              _buildButton('5'),
              _buildButton('6'),
            ],
          ),
          Row(
            children: [
              _buildButton('7'),
              _buildButton('8'),
              _buildButton('9'),
            ],
          ),
          Row(
            children: [
              _buildButton(''),
              _buildButton('0'),
              _buildButton('⊗', onPressed: widget.delete),
            ],
          ),
        ],
      ),
    );
  }

 // Individual keys
  Widget _buildButton(String text, {Function()? onPressed}) {
    return Builder(
      builder: (context) {
        final TextTheme textTheme = Theme.of(context).textTheme;
        return Expanded(
          child: TextButton(
            onPressed: onPressed ?? () => widget.input(text),
            child: Column(
              children: [
                Text(text ,style: textTheme.bodyLarge,),
                const SizedBox(height: 8,),
                const Divider(color: primary100,)
              ],
            ),
          ),
        );
      }
    );
  }

//   void _input(String text) {
//     final value = _controller.text + text;
//     _controller.text = value;
//   }

// void _backspace() {
//     final value = _controller.text;
//     if (value.isNotEmpty) {
//       _controller.text = value.substring(0, value.length - 1);
//     }
//   }
}