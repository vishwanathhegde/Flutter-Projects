import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SigninButton extends StatefulWidget {
  const SigninButton({Key? key}) : super(key: key);

  @override
  State<SigninButton> createState() => _SigninButtonState();
}

class _SigninButtonState extends State<SigninButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xfff64650), Color(0xffce1b4d)]),
          boxShadow: const [
            BoxShadow(
              offset: Offset(
                1.0,
                1.0,
              ),
              blurStyle: BlurStyle.inner,
              blurRadius: 80.0,
              spreadRadius: 2.0,
            ),
          ]),
      child: Center(
        child: Text(
          "Sign-In",
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );
  }
}

class FacebookButton extends StatefulWidget {
  const FacebookButton({Key? key}) : super(key: key);

  @override
  State<FacebookButton> createState() => _FacebookButtonState();
}

class _FacebookButtonState extends State<FacebookButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(71, 98, 168, 1),
          boxShadow: const [
            BoxShadow(
              offset: Offset(
                1.0,
                1.0,
              ),
              blurStyle: BlurStyle.inner,
              blurRadius: 80.0,
              spreadRadius: 2.0,
            ),
          ]),
      child: Center(
        child: Text(
          "Facebook",
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );
  }
}
