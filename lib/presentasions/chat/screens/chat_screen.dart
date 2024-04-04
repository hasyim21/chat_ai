import 'package:flutter/material.dart';

import '../../../core/constant/api_key.dart';
import '../widgets/chat_widget.dart';

import '../widgets/pop_menu_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat AI'),
        actions: const [
          PopMenuWidget(),
        ],
      ),
      body: ChatWidget(apiKey: apiKey),
    );
  }
}
