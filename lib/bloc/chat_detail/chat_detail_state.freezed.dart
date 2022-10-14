// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<MessageModel> messages) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<MessageModel> messages)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<MessageModel> messages)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChatDetailStateData value) $default, {
    required TResult Function(ChatDetailStateLoading value) loading,
    required TResult Function(ChatDetailStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ChatDetailStateData value)? $default, {
    TResult Function(ChatDetailStateLoading value)? loading,
    TResult Function(ChatDetailStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChatDetailStateData value)? $default, {
    TResult Function(ChatDetailStateLoading value)? loading,
    TResult Function(ChatDetailStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDetailStateCopyWith<$Res> {
  factory $ChatDetailStateCopyWith(
          ChatDetailState value, $Res Function(ChatDetailState) then) =
      _$ChatDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatDetailStateCopyWithImpl<$Res>
    implements $ChatDetailStateCopyWith<$Res> {
  _$ChatDetailStateCopyWithImpl(this._value, this._then);

  final ChatDetailState _value;
  // ignore: unused_field
  final $Res Function(ChatDetailState) _then;
}

/// @nodoc
abstract class _$$ChatDetailStateDataCopyWith<$Res> {
  factory _$$ChatDetailStateDataCopyWith(_$ChatDetailStateData value,
          $Res Function(_$ChatDetailStateData) then) =
      __$$ChatDetailStateDataCopyWithImpl<$Res>;
  $Res call({List<MessageModel> messages});
}

/// @nodoc
class __$$ChatDetailStateDataCopyWithImpl<$Res>
    extends _$ChatDetailStateCopyWithImpl<$Res>
    implements _$$ChatDetailStateDataCopyWith<$Res> {
  __$$ChatDetailStateDataCopyWithImpl(
      _$ChatDetailStateData _value, $Res Function(_$ChatDetailStateData) _then)
      : super(_value, (v) => _then(v as _$ChatDetailStateData));

  @override
  _$ChatDetailStateData get _value => super._value as _$ChatDetailStateData;

  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(_$ChatDetailStateData(
      messages == freezed
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

class _$ChatDetailStateData implements ChatDetailStateData {
  const _$ChatDetailStateData(final List<MessageModel> messages)
      : _messages = messages;

  final List<MessageModel> _messages;
  @override
  List<MessageModel> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatDetailState(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDetailStateData &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  _$$ChatDetailStateDataCopyWith<_$ChatDetailStateData> get copyWith =>
      __$$ChatDetailStateDataCopyWithImpl<_$ChatDetailStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<MessageModel> messages) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<MessageModel> messages)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return $default?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<MessageModel> messages)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChatDetailStateData value) $default, {
    required TResult Function(ChatDetailStateLoading value) loading,
    required TResult Function(ChatDetailStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ChatDetailStateData value)? $default, {
    TResult Function(ChatDetailStateLoading value)? loading,
    TResult Function(ChatDetailStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChatDetailStateData value)? $default, {
    TResult Function(ChatDetailStateLoading value)? loading,
    TResult Function(ChatDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ChatDetailStateData implements ChatDetailState {
  const factory ChatDetailStateData(final List<MessageModel> messages) =
      _$ChatDetailStateData;

  List<MessageModel> get messages;
  @JsonKey(ignore: true)
  _$$ChatDetailStateDataCopyWith<_$ChatDetailStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatDetailStateLoadingCopyWith<$Res> {
  factory _$$ChatDetailStateLoadingCopyWith(_$ChatDetailStateLoading value,
          $Res Function(_$ChatDetailStateLoading) then) =
      __$$ChatDetailStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatDetailStateLoadingCopyWithImpl<$Res>
    extends _$ChatDetailStateCopyWithImpl<$Res>
    implements _$$ChatDetailStateLoadingCopyWith<$Res> {
  __$$ChatDetailStateLoadingCopyWithImpl(_$ChatDetailStateLoading _value,
      $Res Function(_$ChatDetailStateLoading) _then)
      : super(_value, (v) => _then(v as _$ChatDetailStateLoading));

  @override
  _$ChatDetailStateLoading get _value =>
      super._value as _$ChatDetailStateLoading;
}

/// @nodoc

class _$ChatDetailStateLoading implements ChatDetailStateLoading {
  const _$ChatDetailStateLoading();

  @override
  String toString() {
    return 'ChatDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatDetailStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<MessageModel> messages) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<MessageModel> messages)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<MessageModel> messages)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChatDetailStateData value) $default, {
    required TResult Function(ChatDetailStateLoading value) loading,
    required TResult Function(ChatDetailStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ChatDetailStateData value)? $default, {
    TResult Function(ChatDetailStateLoading value)? loading,
    TResult Function(ChatDetailStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChatDetailStateData value)? $default, {
    TResult Function(ChatDetailStateLoading value)? loading,
    TResult Function(ChatDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChatDetailStateLoading implements ChatDetailState {
  const factory ChatDetailStateLoading() = _$ChatDetailStateLoading;
}

/// @nodoc
abstract class _$$ChatDetailStateErrorCopyWith<$Res> {
  factory _$$ChatDetailStateErrorCopyWith(_$ChatDetailStateError value,
          $Res Function(_$ChatDetailStateError) then) =
      __$$ChatDetailStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class __$$ChatDetailStateErrorCopyWithImpl<$Res>
    extends _$ChatDetailStateCopyWithImpl<$Res>
    implements _$$ChatDetailStateErrorCopyWith<$Res> {
  __$$ChatDetailStateErrorCopyWithImpl(_$ChatDetailStateError _value,
      $Res Function(_$ChatDetailStateError) _then)
      : super(_value, (v) => _then(v as _$ChatDetailStateError));

  @override
  _$ChatDetailStateError get _value => super._value as _$ChatDetailStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ChatDetailStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ChatDetailStateError implements ChatDetailStateError {
  const _$ChatDetailStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'ChatDetailState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDetailStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$ChatDetailStateErrorCopyWith<_$ChatDetailStateError> get copyWith =>
      __$$ChatDetailStateErrorCopyWithImpl<_$ChatDetailStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<MessageModel> messages) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<MessageModel> messages)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<MessageModel> messages)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChatDetailStateData value) $default, {
    required TResult Function(ChatDetailStateLoading value) loading,
    required TResult Function(ChatDetailStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ChatDetailStateData value)? $default, {
    TResult Function(ChatDetailStateLoading value)? loading,
    TResult Function(ChatDetailStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChatDetailStateData value)? $default, {
    TResult Function(ChatDetailStateLoading value)? loading,
    TResult Function(ChatDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChatDetailStateError implements ChatDetailState {
  const factory ChatDetailStateError(final dynamic error) =
      _$ChatDetailStateError;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$ChatDetailStateErrorCopyWith<_$ChatDetailStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
