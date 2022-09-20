import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tomato/home.dart';
import 'text_field.dart';
import 'custom_button.dart';
import 'validation.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> with EmailValidation {
  @override
  final formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          MyTextField(
            label: "Username",
            icon: Icon(Icons.person),
            callBack: (value) {
              return emailValidator(value);
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          MyTextField(
            label: "password",
            icon: Icon(Icons.lock),
            callBack: (value) {
              return passwordValidator(value);
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          GestureDetector(
            child: SigninButton(),
            onTap: () {
              if (formKey.currentState!.validate()) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TomatoHome()));
              }
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Text(
            "or",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          GestureDetector(
            child: FacebookButton(),
            onTap: () {},
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          GestureDetector(
            onTap: () {},
            child: Text("Forgot Password?",
                style: Theme.of(context).textTheme.subtitle2),
          ),
        ],
      ),
    );
  }
}
