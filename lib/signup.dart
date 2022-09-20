import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tomato/home.dart';
import 'text_field.dart';
import 'custom_button.dart';
import 'validation.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with EmailValidation {
  @override
  final formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          MyTextField(
            label: "Email",
            icon: Icon(Icons.email),
            callBack: (value) {
              return emailValidator(value);
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          MyTextField(
            label: "Username",
            icon: Icon(Icons.person),
            callBack: (value) {
              return emailValidator(value);
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          MyTextField(
            label: "New Password",
            icon: Icon(Icons.lock),
            callBack: (value) {
              return passwordValidator(value);
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          MyTextField(
            label: "Confirm Password",
            icon: Icon(Icons.lock),
            callBack: (value) {
              return passwordValidator(value);
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          GestureDetector(
            child: SigninButton(),
            onTap: () {
              if (formKey.currentState!.validate()) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TomatoHome()));
              }
            },
          ),
        ],
      ),
    );
  }
}
