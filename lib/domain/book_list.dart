import 'package:freezed_annotation/freezed_annotation.dart';

import 'book.dart';

part 'book_list.freezed.dart';

@freezed
class BookList with _$BookList {
  const factory BookList({
    List<Book>? books
}) = _BookList;
}