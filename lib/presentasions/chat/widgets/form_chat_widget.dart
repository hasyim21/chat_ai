import 'package:flutter/material.dart';

import '../../../core/theme/my_colors.dart';

class FormChatWidget extends StatefulWidget {
  final FocusNode focusNode;
  final TextEditingController controller;

  const FormChatWidget({
    super.key,
    required this.focusNode,
    required this.controller,
  });

  @override
  State<FormChatWidget> createState() => _FormChatWidgetState();
}

class _FormChatWidgetState extends State<FormChatWidget> {
  Color _cursorColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 12.0,
      ),
      decoration: BoxDecoration(
        color: MyColors.secondary,
        borderRadius: const BorderRadius.all(
          Radius.circular(25.0),
        ),
      ),
      child: TextField(
        autofocus: true,
        focusNode: widget.focusNode,
        controller: widget.controller,
        minLines: 1,
        maxLines: 7,
        cursorColor: _cursorColor,
        onChanged: (text) {
          setState(() {
            _cursorColor = (text.isEmpty) ? Colors.transparent : Colors.white;
          });
        },
        decoration: const InputDecoration.collapsed(
          hintText: 'Enter a prompt...',
          hintStyle: TextStyle(
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
