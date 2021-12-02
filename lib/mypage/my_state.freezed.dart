// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyPageStateTearOff {
  const _$MyPageStateTearOff();

  _MyPageState call(
      {bool isLoading = false,
      String? name,
      String? email,
      String? password,
      String? description}) {
    return _MyPageState(
      isLoading: isLoading,
      name: name,
      email: email,
      password: password,
      description: description,
    );
  }
}

/// @nodoc
const $MyPageState = _$MyPageStateTearOff();

/// @nodoc
mixin _$MyPageState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyPageStateCopyWith<MyPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPageStateCopyWith<$Res> {
  factory $MyPageStateCopyWith(
          MyPageState value, $Res Function(MyPageState) then) =
      _$MyPageStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      String? name,
      String? email,
      String? password,
      String? description});
}

/// @nodoc
class _$MyPageStateCopyWithImpl<$Res> implements $MyPageStateCopyWith<$Res> {
  _$MyPageStateCopyWithImpl(this._value, this._then);

  final MyPageState _value;
  // ignore: unused_field
  final $Res Function(MyPageState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MyPageStateCopyWith<$Res>
    implements $MyPageStateCopyWith<$Res> {
  factory _$MyPageStateCopyWith(
          _MyPageState value, $Res Function(_MyPageState) then) =
      __$MyPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      String? name,
      String? email,
      String? password,
      String? description});
}

/// @nodoc
class __$MyPageStateCopyWithImpl<$Res> extends _$MyPageStateCopyWithImpl<$Res>
    implements _$MyPageStateCopyWith<$Res> {
  __$MyPageStateCopyWithImpl(
      _MyPageState _value, $Res Function(_MyPageState) _then)
      : super(_value, (v) => _then(v as _MyPageState));

  @override
  _MyPageState get _value => super._value as _MyPageState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? description = freezed,
  }) {
    return _then(_MyPageState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MyPageState implements _MyPageState {
  const _$_MyPageState(
      {this.isLoading = false,
      this.name,
      this.email,
      this.password,
      this.description});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? description;

  @override
  String toString() {
    return 'MyPageState(isLoading: $isLoading, name: $name, email: $email, password: $password, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyPageState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, name, email, password, description);

  @JsonKey(ignore: true)
  @override
  _$MyPageStateCopyWith<_MyPageState> get copyWith =>
      __$MyPageStateCopyWithImpl<_MyPageState>(this, _$identity);
}

abstract class _MyPageState implements MyPageState {
  const factory _MyPageState(
      {bool isLoading,
      String? name,
      String? email,
      String? password,
      String? description}) = _$_MyPageState;

  @override
  bool get isLoading;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$MyPageStateCopyWith<_MyPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
