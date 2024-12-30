import 'package:flutter/material.dart';

import '../sizes/app_sizes.dart';

class AppBtn extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  AppBtn({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, // Corrected here to actually call the function
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFb16303),
        minimumSize: Size(
          AppSize(context: context).getWidth,
          AppSize(context: context).getHeight * 0.06,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
