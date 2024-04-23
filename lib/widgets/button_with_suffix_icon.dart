import 'package:flutter/material.dart';

import '../themes/text_styles.dart';

class ButtonWithSuffixIcon extends StatelessWidget {
  final VoidCallback  onTap;
  final String  title;
  final Color  buttonColor;
  final Color  textColor;
  final Widget   icon;
  const ButtonWithSuffixIcon({super.key, required this.onTap, required this.title, required this.icon, required this.buttonColor, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: buttonColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: AppTextStyles.textStyles.copyWith(color: textColor,fontSize: 15),
            ),

          const Spacer(),
            icon ,

          ],
        ),
      ),
    );
  }
}
