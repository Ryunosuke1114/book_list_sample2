import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'my_state.freezed.dart';

@freezed
class MyPageState with _$MyPageState {
  const factory MyPageState({
    @Default(false) bool isLoading,
    String? name,
    String? email,
    String? password,
    String? description,
  }) = _MyPageState;
}

class MyPageModel extends StateNotifier<MyPageState>{
  MyPageModel() : super(const MyPageState());

  get name => String;
  get email => String;
  get description => String;
  get isLoading => false;

  set email(dynamic email) {}
  set name (dynamic name) {}
  set description (dynamic description) {}

  void startLoading(){
    state = state.copyWith(isLoading:true);
  }

  void endLoading(){
    state.isLoading;
  }
  void fetchUser() async {
    final user = FirebaseAuth.instance.currentUser;

    state = state.copyWith(
        email : user?.email
    );

    final uid = FirebaseAuth.instance.currentUser!.uid;
    final snapshot = await FirebaseFirestore.instance.collection('users').doc(uid).get();
    final data = snapshot.data();
    state = state.copyWith(
        name :data?['name']
    );
    state = state.copyWith(
        description : data?['description']
    );
  }

  Future logout() async {
    await FirebaseAuth.instance.signOut();
  }
}