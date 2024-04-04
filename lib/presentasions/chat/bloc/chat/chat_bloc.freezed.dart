// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) sendChatMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? sendChatMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? sendChatMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendChatMessage value) sendChatMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendChatMessage value)? sendChatMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendChatMessage value)? sendChatMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatEventCopyWith<ChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendChatMessageImplCopyWith<$Res>
    implements $ChatEventCopyWith<$Res> {
  factory _$$SendChatMessageImplCopyWith(_$SendChatMessageImpl value,
          $Res Function(_$SendChatMessageImpl) then) =
      __$$SendChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SendChatMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendChatMessageImpl>
    implements _$$SendChatMessageImplCopyWith<$Res> {
  __$$SendChatMessageImplCopyWithImpl(
      _$SendChatMessageImpl _value, $Res Function(_$SendChatMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SendChatMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendChatMessageImpl implements _SendChatMessage {
  const _$SendChatMessageImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatEvent.sendChatMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendChatMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendChatMessageImplCopyWith<_$SendChatMessageImpl> get copyWith =>
      __$$SendChatMessageImplCopyWithImpl<_$SendChatMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) sendChatMessage,
  }) {
    return sendChatMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? sendChatMessage,
  }) {
    return sendChatMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? sendChatMessage,
    required TResult orElse(),
  }) {
    if (sendChatMessage != null) {
      return sendChatMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendChatMessage value) sendChatMessage,
  }) {
    return sendChatMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendChatMessage value)? sendChatMessage,
  }) {
    return sendChatMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendChatMessage value)? sendChatMessage,
    required TResult orElse(),
  }) {
    if (sendChatMessage != null) {
      return sendChatMessage(this);
    }
    return orElse();
  }
}

abstract class _SendChatMessage implements ChatEvent {
  const factory _SendChatMessage(final String message) = _$SendChatMessageImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SendChatMessageImplCopyWith<_$SendChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)
        loading,
    required TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)
        success,
    required TResult Function(
            String message,
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        loading,
    TResult? Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        success,
    TResult? Function(
            String message,
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        loading,
    TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        success,
    TResult Function(
            String message,
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChatState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)
        loading,
    required TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)
        success,
    required TResult Function(
            String message,
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)
        error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        loading,
    TResult? Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        success,
    TResult? Function(
            String message,
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        loading,
    TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        success,
    TResult Function(
            String message,
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<({bool fromUser, Image? image, String? text})> generatedContent});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generatedContent = null,
  }) {
    return _then(_$LoadingImpl(
      null == generatedContent
          ? _value._generatedContent
          : generatedContent // ignore: cast_nullable_to_non_nullable
              as List<({bool fromUser, Image? image, String? text})>,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(
      final List<({bool fromUser, Image? image, String? text})>
          generatedContent)
      : _generatedContent = generatedContent;

  final List<({bool fromUser, Image? image, String? text})> _generatedContent;
  @override
  List<({bool fromUser, Image? image, String? text})> get generatedContent {
    if (_generatedContent is EqualUnmodifiableListView)
      return _generatedContent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_generatedContent);
  }

  @override
  String toString() {
    return 'ChatState.loading(generatedContent: $generatedContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._generatedContent, _generatedContent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_generatedContent));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)
        loading,
    required TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)
        success,
    required TResult Function(
            String message,
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)
        error,
  }) {
    return loading(generatedContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        loading,
    TResult? Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        success,
    TResult? Function(
            String message,
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        error,
  }) {
    return loading?.call(generatedContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        loading,
    TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        success,
    TResult Function(
            String message,
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(generatedContent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatState {
  const factory _Loading(
      final List<({bool fromUser, Image? image, String? text})>
          generatedContent) = _$LoadingImpl;

  List<({bool fromUser, Image? image, String? text})> get generatedContent;
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<({bool fromUser, Image? image, String? text})> generatedContent});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generatedContent = null,
  }) {
    return _then(_$SuccessImpl(
      null == generatedContent
          ? _value._generatedContent
          : generatedContent // ignore: cast_nullable_to_non_nullable
              as List<({bool fromUser, Image? image, String? text})>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      final List<({bool fromUser, Image? image, String? text})>
          generatedContent)
      : _generatedContent = generatedContent;

  final List<({bool fromUser, Image? image, String? text})> _generatedContent;
  @override
  List<({bool fromUser, Image? image, String? text})> get generatedContent {
    if (_generatedContent is EqualUnmodifiableListView)
      return _generatedContent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_generatedContent);
  }

  @override
  String toString() {
    return 'ChatState.success(generatedContent: $generatedContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._generatedContent, _generatedContent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_generatedContent));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)
        loading,
    required TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)
        success,
    required TResult Function(
            String message,
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)
        error,
  }) {
    return success(generatedContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        loading,
    TResult? Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        success,
    TResult? Function(
            String message,
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        error,
  }) {
    return success?.call(generatedContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        loading,
    TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        success,
    TResult Function(
            String message,
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(generatedContent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ChatState {
  const factory _Success(
      final List<({bool fromUser, Image? image, String? text})>
          generatedContent) = _$SuccessImpl;

  List<({bool fromUser, Image? image, String? text})> get generatedContent;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String message,
      List<({bool fromUser, Image? image, String? text})> generatedContent});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? generatedContent = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == generatedContent
          ? _value._generatedContent
          : generatedContent // ignore: cast_nullable_to_non_nullable
              as List<({bool fromUser, Image? image, String? text})>,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(
      this.message,
      final List<({bool fromUser, Image? image, String? text})>
          generatedContent)
      : _generatedContent = generatedContent;

  @override
  final String message;
  final List<({bool fromUser, Image? image, String? text})> _generatedContent;
  @override
  List<({bool fromUser, Image? image, String? text})> get generatedContent {
    if (_generatedContent is EqualUnmodifiableListView)
      return _generatedContent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_generatedContent);
  }

  @override
  String toString() {
    return 'ChatState.error(message: $message, generatedContent: $generatedContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._generatedContent, _generatedContent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(_generatedContent));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)
        loading,
    required TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)
        success,
    required TResult Function(
            String message,
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)
        error,
  }) {
    return error(message, generatedContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        loading,
    TResult? Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        success,
    TResult? Function(
            String message,
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        error,
  }) {
    return error?.call(message, generatedContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        loading,
    TResult Function(
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        success,
    TResult Function(
            String message,
            List<({bool fromUser, Image? image, String? text})>
                generatedContent)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, generatedContent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ChatState {
  const factory _Error(
      final String message,
      final List<({bool fromUser, Image? image, String? text})>
          generatedContent) = _$ErrorImpl;

  String get message;
  List<({bool fromUser, Image? image, String? text})> get generatedContent;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
