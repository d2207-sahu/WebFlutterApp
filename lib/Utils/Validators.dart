String validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return 'Enter Valid Email';
  else if (value.isEmpty) {
    return 'Compulsory';
  } else
    return null;
}

String validateMobileNumber(String value) {
  if (value.length != 10)
    return 'Mobile Number must be of 10 digit';
  else if (value.isEmpty) {
    return 'Compulsory';
  } else
    return null;
}

String validateName(String value) {
  if (value.length < 3)
    return 'Name must be more than 2 charater';
  else if (value.isEmpty) {
    return 'Compulsory';
  } else
    return null;
}
