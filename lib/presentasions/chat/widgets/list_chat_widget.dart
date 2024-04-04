import 'package:flutter/material.dart';

import 'message_widget.dart';

class ListChatWidget extends StatelessWidget {
  final ScrollController? controller;
  final List<({bool fromUser, Image? image, String? text})> generatedContent;

  const ListChatWidget({
    super.key,
    this.controller,
    required this.generatedContent,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      controller: controller,
      itemCount: generatedContent.length,
      itemBuilder: (context, index) {
        final content = generatedContent[index];
        return MessageWidget(
          text: content.text,
          image: content.image,
          isFromUser: content.fromUser,
        );
      },
    );
  }
}
