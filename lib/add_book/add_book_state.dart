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
  }) = AddBook;
}


class AddBookModel extends StateNotifier<AddBook>{

  final picker = ImagePicker();

  void startLoading(){
    state.isLoading = true;
  }

  void endLoading(){
    state.isLoading = false;
  }


  Future addBook() async {
    if (title == null || title == ""){
      throw 'タイトルが入力されていません';
    }
    if (author == null || author == ""){
      throw '著者が入力されていません';
    }

    final doc = FirebaseFirestore.instance.collection('books').doc();

    String? imgURL;

    if (imageFile != null) {
      //storageにアップロード
      final task = await FirebaseStorage.instance
          .ref('books/${doc.id}')
          .putFile(imageFile!);
      imgURL = await task.ref.getDownloadURL();
    }


    //firestoreに追加
    await doc.set({
      "title": title,
      "author": author,
      "imgURL": imgURL,
    });
  }

  Future pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
      notifyListeners();
    }

  }
}