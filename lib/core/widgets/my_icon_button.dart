import 'package:flutter/material.dart';

import '../theme/my_colors.dart';

class MyIconButton extends StatelessWidget {
  final IconData icon;
  final Function() onTap;

  const MyIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: const BorderRadius.all(
        Radius.circular(45.0),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.all(
          Radius.circular(45.0),
        ),
        child: Container(
          height: 45.0,
          width: 45.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: MyColors.primary,
          ),
        ),
      ),
    );
  }
}
