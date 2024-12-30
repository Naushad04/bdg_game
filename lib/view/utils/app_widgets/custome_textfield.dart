import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFiled extends StatelessWidget {
   CustomTextFiled({
    super.key,
    required this.controller,
    this.validator,
    this.enable = true,
    this.toHide = false,
    required this.iconData,
    this.onChanged,
    this.maxLength,
    this.onTap,
    required this.hint,
    this.keyboardType = TextInputType.text,
  });

  final TextEditingController controller;
  final bool toHide;
  final bool enable;
  final int? maxLength;
  final IconData iconData;
  final String? Function(String?)? validator;
  final String hint;
  final void Function(String)? onChanged;
  final VoidCallback? onTap;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: toHide,
      onChanged: onChanged,
      validator: validator,
      keyboardType: keyboardType,
      onTap: onTap,
      enabled: enable,
      maxLength: maxLength,

      decoration: InputDecoration(
        prefixIcon: Icon(iconData),
        labelText: hint,
        counterText: '',
        border: OutlineInputBorder(
          borderSide: BorderSide(style: BorderStyle.solid) ,
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10)
      ),
    );
  }
}
