import 'package:flutter/material.dart';
import 'package:pharma/color.dart';

class ReusableButton extends StatelessWidget {
  final VoidCallback  onTap;
  final String  title;
  const ReusableButton({Key? key, required this.onTap, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
     onTap: onTap,
      child: Container(
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
                colors: [redColor,darkRedColor])),
        child: Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: whiteColor),
        ),
      ),
    );
  }
}
