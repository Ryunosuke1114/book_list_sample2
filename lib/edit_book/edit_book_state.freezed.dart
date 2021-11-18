// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_book_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditBookTearOff {
  const _$EditBookTearOff();

  _EditBook call({String? title, String? author}) {
    return _EditBook(
      title: title,
      author: author,
    );
  }
}

/// @nodoc
const $EditBook = _$EditBookTearOff();

/// @nodoc
mixin _$EditBook {
  String? get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditBookCopyWith<EditBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditBookCopyWith<$Res> {
  factory $EditBookCopyWith(EditBook value, $Res Function(EditBook) then) =
      _$EditBookCopyWithImpl<$Res>;
  $Res call({String? title, String? author});
}

/// @nodoc
class _$EditBookCopyWithImpl<$Res> implements $EditBookCopyWith<$Res> {
  _$EditBookCopyWithImpl(this._value, this._then);

  final EditBook _value;
  // ignore: unused_field
  final $Res Function(EditBook) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? author = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EditBookCopyWith<$Res> implements $EditBookCopyWith<$Res> {
  factory _$EditBookCopyWith(_EditBook value, $Res Function(_EditBook) then) =
      __$EditBookCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? author});
}

/// @nodoc
class __$EditBookCopyWithImpl<$Res> extends _$EditBookCopyWithImpl<$Res>
    implements _$EditBookCopyWith<$Res> {
  __$EditBookCopyWithImpl(_EditBook _value, $Res Function(_EditBook) _then)
      : super(_value, (v) => _then(v as _EditBook));

  @override
  _EditBook get _value => super._value as _EditBook;

  @override
  $Res call({
    Object? title = freezed,
    Object? author = freezed,
  }) {
    return _then(_EditBook(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_EditBook implements _EditBook {
  const _$_EditBook({this.title, this.author});

  @override
  final String? title;
  @override
  final String? author;

  @override
  String toString() {
    return 'EditBook(title: $title, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditBook &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, author);

  @JsonKey(ignore: true)
  @override
  _$EditBookCopyWith<_EditBook> get copyWith =>
      __$EditBookCopyWithImpl<_EditBook>(this, _$identity);
}

abstract class _EditBook implements EditBook {
  const factory _EditBook({String? title, String? author}) = _$_EditBook;

  @override
  String? get title;
  @override
  String? get author;
  @override
  @JsonKey(ignore: true)
  _$EditBookCopyWith<_EditBook> get copyWith =>
      throw _privateConstructorUsedError;
}
