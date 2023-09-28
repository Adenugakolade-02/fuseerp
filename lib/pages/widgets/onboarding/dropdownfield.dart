import 'package:flutter/material.dart';
import 'package:fuseerp/utils/app_colors.dart';

class DropField extends StatefulWidget {
  final String label;
  final List<String> menuItems;
  final String? selectedItem;
  final Function(String?) function;
  const DropField({super.key, required this.menuItems, required this.selectedItem, required this.function, required this.label});

  @override
  State<DropField> createState() => _DropFieldState();
}

class _DropFieldState extends State<DropField> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: DropdownButtonFormField<String>(
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
        labelText: widget.label,
        labelStyle: textTheme.labelSmall!.copyWith(fontSize: 15),
        ),
        value: widget.selectedItem,
        items: widget.menuItems.map((item) => DropdownMenuItem<String>(
          value: item,
          child: Text(item, style: textTheme.labelLarge,)
          )).toList(),
        onChanged: (item) => setState(() {
          widget.function(item);
        }),
        icon: const Icon(Icons.keyboard_arrow_down, color: blackColor, size: 24,),
      ),
    );
  }
}