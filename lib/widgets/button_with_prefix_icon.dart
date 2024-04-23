import 'package:flutter/material.dart';

import '../themes/text_styles.dart';

class ButtonWithPrefixIcon extends StatelessWidget {
  final VoidCallback  onTap;
  final String  title;
  final Widget   icon;
  final Color   buttonColor;
  final Color  textColor;
  const ButtonWithPrefixIcon({super.key, required this.onTap, required this.title, required this.icon, required this.buttonColor, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:buttonColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon ,
            const SizedBox(width: 25,),
            Text(
              title,
              style: AppTextStyles.textStyles.copyWith(color: textColor,fontWeight:FontWeight.w600,fontSize: 15),
            ),



          ],
        ),
      ),
    );
  }
}
