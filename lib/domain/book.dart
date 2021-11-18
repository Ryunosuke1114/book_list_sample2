import 'package:freezed_annotation/freezed_annotation.dart';
part 'book.freezed.dart';
@freezed

class Book with _$Book {
  const factory Book({
    String? id,
    String? title,
    String? author,
    String? imgUrl,
  }) = _Book;
}