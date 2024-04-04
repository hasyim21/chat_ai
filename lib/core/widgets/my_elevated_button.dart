import 'package:flutter/material.dart';

import '../theme/my_colors.dart';

class MyElevatedButton extends StatelessWidget {
  final String label;
  final Function() onPressed;

  const MyElevatedButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
