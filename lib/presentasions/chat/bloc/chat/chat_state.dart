part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loading(
    List<({Image? image, String? text, bool fromUser})> generatedContent,
  ) = _Loading;
  const factory ChatState.success(
    List<({Image? image, String? text, bool fromUser})> generatedContent,
  ) = _Success;
  const factory ChatState.error(
    String message,
    List<({Image? image, String? text, bool fromUser})> generatedContent,
  ) = _Error;
}
