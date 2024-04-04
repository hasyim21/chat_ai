import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatSession chat;
  List<({Image? image, String? text, bool fromUser})> generatedContent = [];

  ChatBloc(this.chat) : super(const _Initial()) {
    on<_SendChatMessage>((event, emit) async {
      try {
        generatedContent
            .add((image: null, text: event.message, fromUser: true));
        emit(_Loading(generatedContent));
        final response = await chat.sendMessage(
          Content.text(event.message),
        );
        final text = response.text;
        if (text == null) {
          emit(_Error('No response from API.', generatedContent));
        } else {
          generatedContent.add((image: null, text: text, fromUser: false));
          emit(_Success(generatedContent));
        }
      } catch (e) {
        log(e.toString());
        emit(_Error(e.toString(), generatedContent));
      }
    });
  }
}
