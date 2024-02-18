import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hintText, this.prefixIcon});

  final String hintText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(contentPadding: const EdgeInsets.all(9),
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 30),
        border: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.black, strokeAlign: 3, style: BorderStyle.solid),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        focusedBorder: const OutlineInputBorder(gapPadding: 0,
            borderSide: BorderSide(color: Colors.black, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
    );
  }
}
