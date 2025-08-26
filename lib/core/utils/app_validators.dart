class Utils {
  static int minLength = 4;

  /// Basic text validator
  static String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter the text";
    }
    return null;
  }

  /// Email validator with regex
  static String? validatorEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter the email!";
    }

    // Professional email regex pattern
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(value)) {
      return "Please enter a valid email address!";
    }
    return null;
  }

  /// Password validator with min length
  static String? validatorPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter the password!";
    } else if (value.length < minLength) {
      return "Password must be at least $minLength characters!";
    }
    return null;
  }

  /// phone validator
  static String? phoneValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter the phone number";
    }
    // regex phone Number
    final phoneRegex = RegExp(r'(?:\+998|998)[\s-]?\d{2}[\s-]?\d{3}[\s-]?\d{2}[\s-]?d{2}$');

    if (!phoneRegex.hasMatch(value)) {
      return "Please enter a valid Uzbekistan phone number";
    } else {
      return null;
    }
  }
}
