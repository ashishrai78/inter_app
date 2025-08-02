
import 'package:flutter/material.dart';

class UTextFormFieldWidget extends StatelessWidget {
  const UTextFormFieldWidget({
    super.key, required this.prefixIcon, required this.labelText
  });

  final labelText;
  final Icon prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          labelText: labelText,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey, width: 1.5)
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey, width: 1.5)
          ),

      ),
    );
  }
}