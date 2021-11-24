import 'package:book_list_sample2/domain/book.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'edit_book_state.freezed.dart';

@freezed
class EditBook with _$EditBook {
  const factory EditBook({
    String? title,
    String? author,
  }) = _EditBook;
}

class EditBookModel extends StateNotifier<EditBook> {
  final String bookId;

  EditBookModel(this.bookId) : super(const EditBook()) {
    titleController.text = state.title ?? '';
    authorController.text = state.author ?? '';
  }

  final titleController = TextEditingController();
  final authorController = TextEditingController();

  void setTitle(String title) {
    state = state.copyWith(
      title: title,
    );
  }

  void setAuthor(String author) {
    state = state.copyWith(
        author: author
    );
  }

  bool isUpdated() {
    return state.title != null || state.author != null;
  }

  Future update() async {

    state = state.copyWith(
      title: "new Title",
      author: "new Author",
    );

    //firestoreに追加
    await FirebaseFirestore.instance.collection('books').doc(bookId).update({
      "title": state.title,
      "author": state.author,
    });
  }
}
