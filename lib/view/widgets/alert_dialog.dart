import 'dart:core';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AL extends StatelessWidget {
  final Function(Builder) child;

  const AL({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return showDialog();
  }

  showDialog({
    final String title,
    final String message,
    final Function onPressed,
  }) {
    Get.dialog(
      AlertDialog(
        title: Text("$title"),
        content: Text(message),
        actions: [
          FlatButton(
            child: Text("OK"),
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}
