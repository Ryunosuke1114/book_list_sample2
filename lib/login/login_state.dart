import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'login_state.freezed.dart';

@freezed
class Login with _$Login {
  const factory Login({
    String? email,
    String? password,
    @Default(false) bool isLoading,
  }) = _Login;
}

class LoginModel extends StateNotifier<Login> {
  LoginModel() : super(const Login());

  get isLoading => false;

  set email(String email) {}
  set password(String password) {}

  final titleController = TextEditingController();
  final authorController = TextEditingController();

  void startLoading(){
    state = state.copyWith(isLoading: true);
  }

  void endLoading(){
    state.isLoading;
  }

  void setEmail(String email){
    state = state.copyWith(
        email: email
    );
  }

  void setPassword(String password){
    state = state.copyWith(
        password: password
    );
  }

  Future login() async {
    email = titleController.text;
    password = authorController.text;

    if(state.email != null && state.password != null){
      //ログイン
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email:state.email!, password:state.password!);
    }
  }
}