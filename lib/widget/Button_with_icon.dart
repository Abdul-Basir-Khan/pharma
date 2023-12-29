import 'package:flutter/material.dart';
import 'package:pharma/color.dart';

class ButtonWithIcon extends StatelessWidget {
  final VoidCallback  onTap;
  final String  title;
  final Widget   icon;
  const ButtonWithIcon({Key? key, required this.onTap, required this.title, required this.icon}) : super(key: key);

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ,
            SizedBox(width: 20,),
            Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: whiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
