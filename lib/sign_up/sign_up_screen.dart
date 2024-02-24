import 'package:flutter/material.dart';
import 'package:n_project/controller/sign_up_controller.dart';
import 'package:n_project/core/assets_managers_values.dart';
import 'package:n_project/sign_up/widgets/custom_text_filed.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late SignUpController _signUpController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _signUpController=SignUpController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 23, left: 13),
        child: InkWell(
          onTap: () {},
          child: const Row(
            children: [
              RotatedBox(
                  quarterTurns: 10,
                  child: Icon(
                    Icons.double_arrow_sharp,
                    size: 32,
                  )),
              Text(
                "Back",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Image(
                  height: 269,
                  width: 269,
                  image: AssetImage(AssetsManagersValue.kLogo)),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(
                height: 34,
              ),
              CustomTextField(
                  controller: _signUpController.firstNameController,
                  onSubmitted: (value) {},
                  onChanged: (value) {},
                  hintText: "First Name",
                  prefixIcon: const Icon(Icons.person_pin)),
              const SizedBox(height: 21),
              CustomTextField(
                  controller: _signUpController.lastNameController,
                  onSubmitted: (value) {},
                  onChanged: (value) {},
                  hintText: "Last Name",
                  prefixIcon: const Icon(Icons.person_pin)),
              const SizedBox(height: 21),
              CustomTextField(
                  controller: _signUpController.emailController,
                  onSubmitted: (value) {},
                  onChanged: (value) {},
                  hintText: "Email",
                  prefixIcon: const Icon(Icons.email)),
              const SizedBox(height: 21),
              CustomTextField(
                  controller: _signUpController.passwordController,
                  onSubmitted: (value) {},
                  onChanged: (value) {},
                  hintText: "PassWord",
                  prefixIcon: const Icon(Icons.lock)),
              const SizedBox(height: 21),
              CustomTextField(
                  controller: _signUpController.confirmPassword,
                  onSubmitted: (value) {},
                  onChanged: (value) {},
                  hintText: "Confirm Password",
                  prefixIcon: const Icon(Icons.lock)),
              const SizedBox(height: 55),
              MaterialButton(
                onPressed: () {},
                child: Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
