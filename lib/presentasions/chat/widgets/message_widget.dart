import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/theme/my_colors.dart';

class MessageWidget extends StatelessWidget {
  final Image? image;
  final String? text;
  final bool isFromUser;

  const MessageWidget({
    super.key,
    this.image,
    this.text,
    required this.isFromUser,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isFromUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 520.0),
            decoration: BoxDecoration(
              color: isFromUser ? MyColors.blue : MyColors.secondary,
              borderRadius: BorderRadius.circular(12.0),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 10.0,
            ),
            margin: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              children: [
                if (text case final text?)
                  MarkdownBody(
                    data: text,
                    selectable: true,
                    onTapLink: (text, href, title) async {
                      if (href != null) {
                        await launchUrl(Uri.parse(href));
                      }
                    },
                  ),
                if (image case final image?) image,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
