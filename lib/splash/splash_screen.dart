import 'package:flutter/material.dart';
import 'package:n_project/core/assets_managers_values.dart';
import 'package:n_project/core/colors_manager.dart';
import 'package:n_project/sign_up/sign_up_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SignUpScreen(),));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:ColorsManager.kPrimaryColor,
      body: Center(
        child: Image(image: AssetImage(AssetsManagersValue.kLogo)),
      ),
    );
  }
}
