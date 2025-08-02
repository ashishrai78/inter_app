import 'package:flutter/material.dart';

class UElevatedButton extends StatelessWidget {
  const UElevatedButton(
      {super.key, required this.onPressed, required this.child});

  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 55,
        child: ElevatedButton(
            onPressed: onPressed,
            child: child,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,

          ),
        ),
    );
  }
}
