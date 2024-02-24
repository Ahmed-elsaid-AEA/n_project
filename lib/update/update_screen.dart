import 'package:flutter/material.dart';
import 'package:n_project/controller/update_controller.dart';
import 'package:n_project/core/assets_managers_values.dart';
import 'package:n_project/sign_up/widgets/custom_text_filed.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  late UpdateController _updateController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _updateController = UpdateController();
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
                  controller: _updateController.firstNameController,
                  onSubmitted: (value) {},
                  onChanged: (value) {},
                  hintText: "FUll name",
                  prefixIcon: Icon(Icons.person_pin)),
              const SizedBox(height: 21),
              CustomTextField(
                  controller: _updateController.emailController,
                  onSubmitted: (value) {},
                  onChanged: (value) {},
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email)),
              const SizedBox(height: 21),
              CustomTextField(
                  controller: _updateController.passwordController,
                  onSubmitted: (value) {},
                  onChanged: (value) {},
                  hintText: "PassWord",
                  prefixIcon: Icon(Icons.lock)),
              const SizedBox(height: 21),
              CustomTextField(
                  controller: _updateController.nationalController,
                  onSubmitted: (value) {},
                  onChanged: (value) {},
                  hintText: "National Id",
                  prefixIcon: Icon(Icons.person_pin_outlined)),
              const SizedBox(height: 21),
              CustomTextField(
                  controller: _updateController.phoneNumberController,
                  onSubmitted: (value) {},
                  onChanged: (value) {},
                  hintText: "Phone Number",
                  prefixIcon: Icon(Icons.phone_android)),
              const SizedBox(height: 21),
              CustomTextField(
                  controller: _updateController.addressController,
                  onSubmitted: (value) {},
                  onChanged: (value) {},
                  hintText: "Address",
                  prefixIcon: Icon(Icons.location_pin)),
              const SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                      const Text(
                        "WhatsApp available",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Container(
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 3),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: const Text(
                        "Update",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
