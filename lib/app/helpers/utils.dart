bool validateEmail(String email) {
  try {
    // Regular expression pattern for email validation
    const pattern = r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';

    final regex = RegExp(pattern);
    return regex.hasMatch(email);
  } catch (e) {
    return false;
  }

  // Check if the email matches the pattern
}

String? formValidateCallback(value) {
  try {
    if (value!.isEmpty) {
      return 'Please enter your email';
    }
    if (!value.contains('@')) {
      return 'Please enter a valid email address';
    }
    return null;
  } catch (e) {
    return null;
  }
}
