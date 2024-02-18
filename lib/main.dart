import 'package:flutter/material.dart';
import 'package:n_project/core/colors_manager.dart';
import 'package:n_project/update/update_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(scaffoldBackgroundColor: ColorsManager.kPrimaryColor,fontFamily: 'Kalam'),
    home: const UpdateScreen(),
  ));
}
