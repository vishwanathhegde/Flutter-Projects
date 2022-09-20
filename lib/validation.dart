mixin EmailValidation {
  emailValidator(value) {
    if (value == null || value.isEmpty) {
      return "E-Mail Required";
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$').hasMatch(value)) {
      return "Invalid E-Mail";
    } else {
      return null;
    }
  }

  passwordValidator(value) {
    if (value == null || value.isEmpty) {
      return "Password Required";
    } else if (value.length < 4) {
      return "minimum length should be 4";
    } else {
      return null;
    }
  }
}
