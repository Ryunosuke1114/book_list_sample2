// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterPageStateTearOff {
  const _$RegisterPageStateTearOff();

  _RegisterPageState call(
      {String? email, String? password, bool isLoading = false}) {
    return _RegisterPageState(
      email: email,
      password: password,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $RegisterPageState = _$RegisterPageStateTearOff();

/// @nodoc
mixin _$RegisterPageState {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterPageStateCopyWith<RegisterPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterPageStateCopyWith<$Res> {
  factory $RegisterPageStateCopyWith(
          RegisterPageState value, $Res Function(RegisterPageState) then) =
      _$RegisterPageStateCopyWithImpl<$Res>;
  $Res call({String? email, String? password, bool isLoading});
}

/// @nodoc
class _$RegisterPageStateCopyWithImpl<$Res>
    implements $RegisterPageStateCopyWith<$Res> {
  _$RegisterPageStateCopyWithImpl(this._value, this._then);

  final RegisterPageState _value;
  // ignore: unused_field
  final $Res Function(RegisterPageState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$RegisterPageStateCopyWith<$Res>
    implements $RegisterPageStateCopyWith<$Res> {
  factory _$RegisterPageStateCopyWith(
          _RegisterPageState value, $Res Function(_RegisterPageState) then) =
      __$RegisterPageStateCopyWithImpl<$Res>;
  @override
  $Res call({String? email, String? password, bool isLoading});
}

/// @nodoc
class __$RegisterPageStateCopyWithImpl<$Res>
    extends _$RegisterPageStateCopyWithImpl<$Res>
    implements _$RegisterPageStateCopyWith<$Res> {
  __$RegisterPageStateCopyWithImpl(
      _RegisterPageState _value, $Res Function(_RegisterPageState) _then)
      : super(_value, (v) => _then(v as _RegisterPageState));

  @override
  _RegisterPageState get _value => super._value as _RegisterPageState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_RegisterPageState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RegisterPageState implements _RegisterPageState {
  const _$_RegisterPageState(
      {this.email, this.password, this.isLoading = false});

  @override
  final String? email;
  @override
  final String? password;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'RegisterPageState(email: $email, password: $password, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterPageState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, isLoading);

  @JsonKey(ignore: true)
  @override
  _$RegisterPageStateCopyWith<_RegisterPageState> get copyWith =>
      __$RegisterPageStateCopyWithImpl<_RegisterPageState>(this, _$identity);
}

abstract class _RegisterPageState implements RegisterPageState {
  const factory _RegisterPageState(
      {String? email, String? password, bool isLoading}) = _$_RegisterPageState;

  @override
  String? get email;
  @override
  String? get password;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$RegisterPageStateCopyWith<_RegisterPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
