import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    required this.onChanged,
    required this.onSubmitted,
    required this.controller,
  });

  final String hintText;
  final Widget? prefixIcon;
  final ValueChanged<String> onChanged;
  final ValueChanged<String> onSubmitted;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: onSubmitted,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(9),
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 30),
        border: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.black, strokeAlign: 3, style: BorderStyle.solid),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        focusedBorder: const OutlineInputBorder(
            gapPadding: 0,
            borderSide: BorderSide(color: Colors.black, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
    );
  }
}
