import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String label;
  Icon icon;
  FormFieldValidator<String> callBack;
  // FormFieldValidator<String> callBack;
  MyTextField(
      {required this.label, required this.icon, required this.callBack});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: callBack,
      decoration: InputDecoration(
        prefixIcon: icon,
        labelText: label,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.0),
        ),
        labelStyle: TextStyle(color: Colors.black26),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black12, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.0),
        ),
      ),
      // validator: callBack,
      // onSaved: ,
    );
  }
}
