import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback  onTap;
  final String  title;
  final Color  buttonColor;
  final Color  textColor;
  const CustomButton({Key? key, required this.onTap, required this.title, required this.buttonColor, required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
      onTap: onTap,
      child: Container(
        height: 54,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color:buttonColor,),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color:textColor),
          ),
        ),
      ),
    );
  }
}
