import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter/services.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

import '../bloc/chat/chat_bloc.dart';
import '../../../core/theme/my_colors.dart';
import '../../../core/widgets/my_show_error.dart';
import 'list_chat_widget.dart';
import '../../../core/widgets/my_icon_button.dart';
import 'form_chat_widget.dart';

class ChatWidget extends StatefulWidget {
  final String apiKey;

  const ChatWidget({super.key, required this.apiKey});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  late final GenerativeModel _model;
  // late final GenerativeModel _visionModel;
  late final ChatSession _chat;
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _textController = TextEditingController();
  final FocusNode _textFieldFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = GenerativeModel(
      model: 'gemini-pro',
      apiKey: widget.apiKey,
    );
    // _visionModel = GenerativeModel(
    //   model: 'gemini-pro-vision',
    //   apiKey: widget.apiKey,
    // );
    _chat = _model.startChat();
  }

  void _scrollDown() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(
          milliseconds: 750,
        ),
        curve: Curves.easeOutCirc,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatBloc(_chat),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: widget.apiKey.isNotEmpty
                ? BlocConsumer<ChatBloc, ChatState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return Center(
                            child: Image.asset(
                              'assets/images/logo.png',
                              width: 75.0,
                            ),
                          );
                        },
                        loading: (generatedContent) {
                          return ListChatWidget(
                            controller: _scrollController,
                            generatedContent: generatedContent,
                          );
                        },
                        success: (generatedContent) {
                          return ListChatWidget(
                            controller: _scrollController,
                            generatedContent: generatedContent,
                          );
                        },
                        error: (_, generatedContent) {
                          return ListChatWidget(
                            controller: _scrollController,
                            generatedContent: generatedContent,
                          );
                        },
                      );
                    },
                    listener: (context, state) {
                      state.maybeWhen(
                        orElse: () {},
                        loading: (_) {
                          _textController.clear();
                          _textFieldFocus.unfocus();
                          _scrollDown();
                        },
                        success: (_) {
                          _scrollDown();
                        },
                        error: (message, _) {
                          myShowError(context, message);
                        },
                      );
                    },
                  )
                : ListView(
                    padding: const EdgeInsets.all(8.0),
                    children: const [
                      Text(
                        'No API key found.',
                      ),
                    ],
                  ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 8.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: FormChatWidget(
                    focusNode: _textFieldFocus,
                    controller: _textController,
                  ),
                ),
                const SizedBox.square(dimension: 8),
                // IconButton(
                //   onPressed: !_loading
                //       ? () async {
                //           _sendImagePrompt(_textController.text);
                //         }
                //       : null,
                //   icon: Icon(
                //     Icons.image,
                //     color: _loading
                //         ? Theme.of(context).colorScheme.secondary
                //         : Theme.of(context).colorScheme.primary,
                //   ),
                // ),

                BlocBuilder<ChatBloc, ChatState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return MyIconButton(
                          icon: Icons.arrow_upward_rounded,
                          onTap: () {
                            if (_textController.text.isEmpty) {
                              return myShowError(
                                  context, 'Text cannot be empty');
                            }
                            context.read<ChatBloc>().add(
                                  ChatEvent.sendChatMessage(
                                    _textController.text,
                                  ),
                                );
                          },
                        );
                      },
                      loading: (generatedContent) {
                        return CircularProgressIndicator(
                          color: MyColors.blue,
                        );
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Future<void> _sendImagePrompt(String message) async {
  //   setState(() {
  //     _loading = true;
  //   });
  //   try {
  //     ByteData catBytes = await rootBundle.load('assets/images/cat.jpg');
  //     ByteData sconeBytes = await rootBundle.load('assets/images/scones.jpg');
  //     final content = [
  //       Content.multi([
  //         TextPart(message),
  //         // The only accepted mime types are image/*.
  //         DataPart('image/jpeg', catBytes.buffer.asUint8List()),
  //         DataPart('image/jpeg', sconeBytes.buffer.asUint8List()),
  //       ])
  //     ];
  //     _generatedContent.add((
  //       image: Image.asset("assets/images/cat.jpg"),
  //       text: message,
  //       fromUser: true
  //     ));
  //     _generatedContent.add((
  //       image: Image.asset("assets/images/scones.jpg"),
  //       text: null,
  //       fromUser: true
  //     ));

  //     var response = await _visionModel.generateContent(content);
  //     var text = response.text;
  //     _generatedContent.add((image: null, text: text, fromUser: false));

  //     if (text == null) {
  //       _showError('No response from API.');
  //       return;
  //     } else {
  //       setState(() {
  //         _loading = false;
  //         _scrollDown();
  //       });
  //     }
  //   } catch (e) {
  //     _showError(e.toString());
  //     setState(() {
  //       _loading = false;
  //     });
  //   } finally {
  //     _textController.clear();
  //     setState(() {
  //       _loading = false;
  //     });
  //     _textFieldFocus.requestFocus();
  //   }
  // }
}
