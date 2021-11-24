// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookListTearOff {
  const _$BookListTearOff();

  _BookList call({List<Book>? books}) {
    return _BookList(
      books: books,
    );
  }
}

/// @nodoc
const $BookList = _$BookListTearOff();

/// @nodoc
mixin _$BookList {
  List<Book>? get books => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookListCopyWith<BookList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookListCopyWith<$Res> {
  factory $BookListCopyWith(BookList value, $Res Function(BookList) then) =
      _$BookListCopyWithImpl<$Res>;
  $Res call({List<Book>? books});
}

/// @nodoc
class _$BookListCopyWithImpl<$Res> implements $BookListCopyWith<$Res> {
  _$BookListCopyWithImpl(this._value, this._then);

  final BookList _value;
  // ignore: unused_field
  final $Res Function(BookList) _then;

  @override
  $Res call({
    Object? books = freezed,
  }) {
    return _then(_value.copyWith(
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>?,
    ));
  }
}

/// @nodoc
abstract class _$BookListCopyWith<$Res> implements $BookListCopyWith<$Res> {
  factory _$BookListCopyWith(_BookList value, $Res Function(_BookList) then) =
      __$BookListCopyWithImpl<$Res>;
  @override
  $Res call({List<Book>? books});
}

/// @nodoc
class __$BookListCopyWithImpl<$Res> extends _$BookListCopyWithImpl<$Res>
    implements _$BookListCopyWith<$Res> {
  __$BookListCopyWithImpl(_BookList _value, $Res Function(_BookList) _then)
      : super(_value, (v) => _then(v as _BookList));

  @override
  _BookList get _value => super._value as _BookList;

  @override
  $Res call({
    Object? books = freezed,
  }) {
    return _then(_BookList(
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>?,
    ));
  }
}

/// @nodoc

class _$_BookList implements _BookList {
  const _$_BookList({this.books});

  @override
  final List<Book>? books;

  @override
  String toString() {
    return 'BookList(books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookList &&
            const DeepCollectionEquality().equals(other.books, books));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(books));

  @JsonKey(ignore: true)
  @override
  _$BookListCopyWith<_BookList> get copyWith =>
      __$BookListCopyWithImpl<_BookList>(this, _$identity);
}

abstract class _BookList implements BookList {
  const factory _BookList({List<Book>? books}) = _$_BookList;

  @override
  List<Book>? get books;
  @override
  @JsonKey(ignore: true)
  _$BookListCopyWith<_BookList> get copyWith =>
      throw _privateConstructorUsedError;
}
