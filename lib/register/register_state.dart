
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterPageState with _$RegisterPageState {
  const factory RegisterPageState({
    String? email,
    String? password,
    @Default(false) bool isLoading,
  }) = _RegisterPageState;
}

class RegisterModel extends StateNotifier<RegisterPageState>{
  RegisterModel() : super(const RegisterPageState());

  final titleController = TextEditingController();
  final authorController = TextEditingController();

  get isLoading => false;

  void startLoading(){
    state = state.copyWith(
        isLoading: true
    );
  }

  void endLoading(){
    state.isLoading;
  }

  void setEmail(String email){
    state.email;
  }

  void setPassword(String password){
    state.password;
  }

  Future signUp() async {
    state = state.copyWith(
        email :titleController.text
    );

    state = state.copyWith(
        password :titleController.text
    );

    if (state.email != null && state.password != null){
      //firebase authでユーザー作成
      final userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: state.email!, password: state.password!);
      final user = userCredential.user;

      if (user !=  null){
        final uid = user.uid;
        //firestoreに追加
        final doc = FirebaseFirestore.instance.collection('users').doc(uid);

        await doc.set({
          "uid": uid,
          "email": state.email,
        });
      }
    }
  }
}