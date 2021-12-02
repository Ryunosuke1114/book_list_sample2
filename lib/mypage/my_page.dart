import 'package:book_list_sample2/edit_profile/edit_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'my_state.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  static Widget wrapped() {
    return StateNotifierProvider<MyPageModel, MyPageState>(
      create: (_) => MyPageModel(),
      child: const MyPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<MyPageModel>(context, listen: false);
    final model = Provider.of<MyPageState>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("マイページ"),
        actions: [
          IconButton(
            onPressed: () async {
              //画面遷移
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      EditProfilePage(model.name!, model.description!),
                ),
              );
              controller.fetchUser();
            },
            icon: Icon(Icons.edit),
          ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    model.name ?? "名前なし",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    model.email ?? "メールアドレスなし",
                  ),
                  Text(
                    model.description ?? "プロフィールなし",
                  ),
                  TextButton(
                    //ログアウト
                    onPressed: () async {
                      await controller.logout();
                      Navigator.of(context).pop();
                    },
                    child: Text("ログアウト"),
                  ),
                ],
              ),
            ),
            if (controller.isLoading)
              Container(
                color: Colors.black54,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
