// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_conversation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatConversationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<UserModel> contact) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<UserModel> contact)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<UserModel> contact)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChatConversationStateData value) $default, {
    required TResult Function(ChatConversationStateLoading value) loading,
    required TResult Function(ChatConversationStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ChatConversationStateData value)? $default, {
    TResult Function(ChatConversationStateLoading value)? loading,
    TResult Function(ChatConversationStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChatConversationStateData value)? $default, {
    TResult Function(ChatConversationStateLoading value)? loading,
    TResult Function(ChatConversationStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatConversationStateCopyWith<$Res> {
  factory $ChatConversationStateCopyWith(ChatConversationState value,
          $Res Function(ChatConversationState) then) =
      _$ChatConversationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatConversationStateCopyWithImpl<$Res>
    implements $ChatConversationStateCopyWith<$Res> {
  _$ChatConversationStateCopyWithImpl(this._value, this._then);

  final ChatConversationState _value;
  // ignore: unused_field
  final $Res Function(ChatConversationState) _then;
}

/// @nodoc
abstract class _$$ChatConversationStateDataCopyWith<$Res> {
  factory _$$ChatConversationStateDataCopyWith(
          _$ChatConversationStateData value,
          $Res Function(_$ChatConversationStateData) then) =
      __$$ChatConversationStateDataCopyWithImpl<$Res>;
  $Res call({List<UserModel> contact});
}

/// @nodoc
class __$$ChatConversationStateDataCopyWithImpl<$Res>
    extends _$ChatConversationStateCopyWithImpl<$Res>
    implements _$$ChatConversationStateDataCopyWith<$Res> {
  __$$ChatConversationStateDataCopyWithImpl(_$ChatConversationStateData _value,
      $Res Function(_$ChatConversationStateData) _then)
      : super(_value, (v) => _then(v as _$ChatConversationStateData));

  @override
  _$ChatConversationStateData get _value =>
      super._value as _$ChatConversationStateData;

  @override
  $Res call({
    Object? contact = freezed,
  }) {
    return _then(_$ChatConversationStateData(
      contact == freezed
          ? _value._contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc

class _$ChatConversationStateData implements ChatConversationStateData {
  const _$ChatConversationStateData(final List<UserModel> contact)
      : _contact = contact;

  final List<UserModel> _contact;
  @override
  List<UserModel> get contact {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contact);
  }

  @override
  String toString() {
    return 'ChatConversationState(contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatConversationStateData &&
            const DeepCollectionEquality().equals(other._contact, _contact));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contact));

  @JsonKey(ignore: true)
  @override
  _$$ChatConversationStateDataCopyWith<_$ChatConversationStateData>
      get copyWith => __$$ChatConversationStateDataCopyWithImpl<
          _$ChatConversationStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<UserModel> contact) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<UserModel> contact)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return $default?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<UserModel> contact)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChatConversationStateData value) $default, {
    required TResult Function(ChatConversationStateLoading value) loading,
    required TResult Function(ChatConversationStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ChatConversationStateData value)? $default, {
    TResult Function(ChatConversationStateLoading value)? loading,
    TResult Function(ChatConversationStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChatConversationStateData value)? $default, {
    TResult Function(ChatConversationStateLoading value)? loading,
    TResult Function(ChatConversationStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ChatConversationStateData implements ChatConversationState {
  const factory ChatConversationStateData(final List<UserModel> contact) =
      _$ChatConversationStateData;

  List<UserModel> get contact;
  @JsonKey(ignore: true)
  _$$ChatConversationStateDataCopyWith<_$ChatConversationStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatConversationStateLoadingCopyWith<$Res> {
  factory _$$ChatConversationStateLoadingCopyWith(
          _$ChatConversationStateLoading value,
          $Res Function(_$ChatConversationStateLoading) then) =
      __$$ChatConversationStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatConversationStateLoadingCopyWithImpl<$Res>
    extends _$ChatConversationStateCopyWithImpl<$Res>
    implements _$$ChatConversationStateLoadingCopyWith<$Res> {
  __$$ChatConversationStateLoadingCopyWithImpl(
      _$ChatConversationStateLoading _value,
      $Res Function(_$ChatConversationStateLoading) _then)
      : super(_value, (v) => _then(v as _$ChatConversationStateLoading));

  @override
  _$ChatConversationStateLoading get _value =>
      super._value as _$ChatConversationStateLoading;
}

/// @nodoc

class _$ChatConversationStateLoading implements ChatConversationStateLoading {
  const _$ChatConversationStateLoading();

  @override
  String toString() {
    return 'ChatConversationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatConversationStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<UserModel> contact) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<UserModel> contact)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<UserModel> contact)? $default, {
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
    TResult Function(ChatConversationStateData value) $default, {
    required TResult Function(ChatConversationStateLoading value) loading,
    required TResult Function(ChatConversationStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ChatConversationStateData value)? $default, {
    TResult Function(ChatConversationStateLoading value)? loading,
    TResult Function(ChatConversationStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChatConversationStateData value)? $default, {
    TResult Function(ChatConversationStateLoading value)? loading,
    TResult Function(ChatConversationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChatConversationStateLoading implements ChatConversationState {
  const factory ChatConversationStateLoading() = _$ChatConversationStateLoading;
}

/// @nodoc
abstract class _$$ChatConversationStateErrorCopyWith<$Res> {
  factory _$$ChatConversationStateErrorCopyWith(
          _$ChatConversationStateError value,
          $Res Function(_$ChatConversationStateError) then) =
      __$$ChatConversationStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class __$$ChatConversationStateErrorCopyWithImpl<$Res>
    extends _$ChatConversationStateCopyWithImpl<$Res>
    implements _$$ChatConversationStateErrorCopyWith<$Res> {
  __$$ChatConversationStateErrorCopyWithImpl(
      _$ChatConversationStateError _value,
      $Res Function(_$ChatConversationStateError) _then)
      : super(_value, (v) => _then(v as _$ChatConversationStateError));

  @override
  _$ChatConversationStateError get _value =>
      super._value as _$ChatConversationStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ChatConversationStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ChatConversationStateError implements ChatConversationStateError {
  const _$ChatConversationStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'ChatConversationState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatConversationStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$ChatConversationStateErrorCopyWith<_$ChatConversationStateError>
      get copyWith => __$$ChatConversationStateErrorCopyWithImpl<
          _$ChatConversationStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<UserModel> contact) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<UserModel> contact)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<UserModel> contact)? $default, {
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
    TResult Function(ChatConversationStateData value) $default, {
    required TResult Function(ChatConversationStateLoading value) loading,
    required TResult Function(ChatConversationStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ChatConversationStateData value)? $default, {
    TResult Function(ChatConversationStateLoading value)? loading,
    TResult Function(ChatConversationStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChatConversationStateData value)? $default, {
    TResult Function(ChatConversationStateLoading value)? loading,
    TResult Function(ChatConversationStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChatConversationStateError implements ChatConversationState {
  const factory ChatConversationStateError(final dynamic error) =
      _$ChatConversationStateError;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$ChatConversationStateErrorCopyWith<_$ChatConversationStateError>
      get copyWith => throw _privateConstructorUsedError;
}
