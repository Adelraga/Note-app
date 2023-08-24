import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxlines = 1});
  final String hint;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimatyColor,
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: KPrimatyColor),
        border: bordermethod(),
        enabledBorder: bordermethod(),
        focusedBorder: bordermethod(KPrimatyColor),
      ),
    );
  }

  OutlineInputBorder bordermethod([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
