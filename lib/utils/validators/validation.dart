class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    // Regular expression for email validation
    // ignore: valid_regexps
    final emailRegExp = RegExp(r'^[a-zA-Z');

    if (!emailRegExp.hasMatch(value)) {
      return ('Invalid email address');
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    // Check for minimize password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    // check for uppercase letters
    // ignore: valid_regexps
    if (!value.contains(RegExp(r'[A-Z'))) {
      return 'Password must contain at least one Uppercase letter';
    }

    // check for number
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number.';
    }

    //check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*()))___)(*&^%]'))) {
      return 'Password must contain at least one special character';
    }

    return null;
  }

  static String? validatePhoneNumber(String value) {
    if (value.isEmpty) {
      return ' Phone number id required';
    }

    // Rgular expression for phone number validation(assuming a 10-digits US phone number format)
    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return (' Invalid phone number format(10 digits required');
    }
    return null;
  }

  // Add more custom validators as needed for your specific requirement
}
