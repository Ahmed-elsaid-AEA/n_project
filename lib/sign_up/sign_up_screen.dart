import 'package:flutter/material.dart';
import 'package:n_project/core/assets_managers_values.dart';
import 'package:n_project/sign_up/widgets/custom_text_filed.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 23, left: 13),
        child: InkWell(
          onTap: () {},
          child: Row(
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
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                  height: 269,
                  width: 269,
                  image: AssetImage(AssetsManagersValue.kLogo)),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 34,
              ),
              CustomTextFiled(
                  hintText: "First Name", prefixIcon: Icon(Icons.person_pin)),
              SizedBox(height: 21),
              CustomTextFiled(
                  hintText: "Last Name", prefixIcon: Icon(Icons.person_pin)),
              SizedBox(height: 21),
              CustomTextFiled(
                  hintText: "Email", prefixIcon: Icon(Icons.email)),
              SizedBox(height: 21),
              CustomTextFiled(
                  hintText: "PassWord", prefixIcon: Icon(Icons.lock)),
              SizedBox(height: 21),
              CustomTextFiled(
                  hintText: "Confirm Password", prefixIcon: Icon(Icons.lock)),
              SizedBox(height: 55),
              MaterialButton(
                onPressed: () {},
                child: Container(padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700
                    ),
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
