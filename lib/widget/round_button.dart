import 'package:flutter/material.dart';
import 'package:pharma/color.dart';

class RoundButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget? child;

  const RoundButton({Key? key, required this.onTap, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: borderColor),
              borderRadius: BorderRadius.circular(8)),
          child: child,
        ));
  }
}
