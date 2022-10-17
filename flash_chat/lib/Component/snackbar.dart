import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';


showSnackBar(String status, BuildContext context) {
  final snackBar = SnackBar(
      duration: Duration(milliseconds: 1250),
      content: Text(
        status,
        style: kSendButtonTextStyle,
      ));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

popNavigator(BuildContext context) {
  Navigator.pop(context);
}
