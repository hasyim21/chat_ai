import 'package:flutter/material.dart';

import '../theme/my_colors.dart';

void myShowError(BuildContext context, String message) {
  showDialog<void>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Something went wrong'),
        content: SingleChildScrollView(
          child: SelectableText(message),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'OK',
              style: TextStyle(
                color: MyColors.blue,
              ),
            ),
          )
        ],
      );
    },
  );
}
