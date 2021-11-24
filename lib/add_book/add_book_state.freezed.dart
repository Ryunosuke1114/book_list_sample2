// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_book_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddBookTearOff {
  const _$AddBookTearOff();

  _AddBook call(
      {String? title,
      String? author,
      File? imageFile,
      bool isLoading = false}) {
    return _AddBook(
      title: title,
      author: author,
      imageFile: imageFile,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $AddBook = _$AddBookTearOff();

/// @nodoc
mixin _$AddBook {
  String? get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  File? get imageFile => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddBookCopyWith<AddBook> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddBookCopyWith<$Res> {
  factory $AddBookCopyWith(AddBook value, $Res Function(AddBook) then) =
      _$AddBookCopyWithImpl<$Res>;
  $Res call({String? title, String? author, File? imageFile, bool isLoading});
}

/// @nodoc
class _$AddBookCopyWithImpl<$Res> implements $AddBookCopyWith<$Res> {
  _$AddBookCopyWithImpl(this._value, this._then);

  final AddBook _value;
  // ignore: unused_field
  final $Res Function(AddBook) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? author = freezed,
    Object? imageFile = freezed,
    Object? isLoading = freezed,
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
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AddBookCopyWith<$Res> implements $AddBookCopyWith<$Res> {
  factory _$AddBookCopyWith(_AddBook value, $Res Function(_AddBook) then) =
      __$AddBookCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? author, File? imageFile, bool isLoading});
}

/// @nodoc
class __$AddBookCopyWithImpl<$Res> extends _$AddBookCopyWithImpl<$Res>
    implements _$AddBookCopyWith<$Res> {
  __$AddBookCopyWithImpl(_AddBook _value, $Res Function(_AddBook) _then)
      : super(_value, (v) => _then(v as _AddBook));

  @override
  _AddBook get _value => super._value as _AddBook;

  @override
  $Res call({
    Object? title = freezed,
    Object? author = freezed,
    Object? imageFile = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_AddBook(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddBook implements _AddBook {
  const _$_AddBook(
      {this.title, this.author, this.imageFile, this.isLoading = false});

  @override
  final String? title;
  @override
  final String? author;
  @override
  final File? imageFile;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AddBook(title: $title, author: $author, imageFile: $imageFile, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddBook &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, author, imageFile, isLoading);

  @JsonKey(ignore: true)
  @override
  _$AddBookCopyWith<_AddBook> get copyWith =>
      __$AddBookCopyWithImpl<_AddBook>(this, _$identity);
}

abstract class _AddBook implements AddBook {
  const factory _AddBook(
      {String? title,
      String? author,
      File? imageFile,
      bool isLoading}) = _$_AddBook;

  @override
  String? get title;
  @override
  String? get author;
  @override
  File? get imageFile;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$AddBookCopyWith<_AddBook> get copyWith =>
      throw _privateConstructorUsedError;
}
