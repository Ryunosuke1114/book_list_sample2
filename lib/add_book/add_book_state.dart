import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:state_notifier/state_notifier.dart';

part 'add_book_state.freezed.dart';

@freezed
class AddBook with _$AddBook {
  const factory AddBook({
    String? title,
    String? author,
    File? imageFile,
    @Default(false) bool isLoading
  }) = _AddBook;
}

class AddBookModel extends StateNotifier<AddBook>{
  AddBookModel() : super(const AddBook());

  set title(String title) {}
  set author(String author) {}

  final picker = ImagePicker();

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

  void startLoading(){
    state = state.copyWith( isLoading:true );
  }

  void endLoading(){
    state = state.copyWith( isLoading:false );
  }


  Future addBook() async {
    if (state.title == null || state.title == ""){
      throw 'タイトルが入力されていません';
    }
    if (state.author == null || state.author == ""){
      throw '著者が入力されていません';
    }

    final doc = FirebaseFirestore.instance.collection('books').doc();

    String? imgURL;

    if (state.imageFile != null) {
      //storageにアップロード
      final task = await FirebaseStorage.instance
          .ref('books/${doc.id}')
          .putFile(state.imageFile!);
      imgURL = await task.ref.getDownloadURL();
    }


    //firestoreに追加
    await doc.set({
      "title": state.title,
      "author": state.author,
      "imgURL": state.imageFile,
    });
  }

  Future pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      state = state.copyWith( imageFile: File(pickedFile.path) );

    }
  }
}