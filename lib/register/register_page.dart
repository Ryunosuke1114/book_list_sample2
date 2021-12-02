import 'package:book_list_sample2/register/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  static Widget wrapped() {
    return StateNotifierProvider<RegisterModel, RegisterPageState>(
      create: (_) => RegisterModel(),
      child: const RegisterPage(),
    );
  }

  @override
  Widget build(BuildContext context) {

    final controller = Provider.of<RegisterModel>(context, listen: false);
    final model = Provider.of<RegisterPageState>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("新規登録"),
      ),
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                TextField(
                  controller: controller.titleController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                  onChanged: (text) {
                    controller.setEmail(text);
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: controller.authorController,
                  decoration: InputDecoration(
                    hintText: 'パスワード',
                  ),
                  onChanged: (text) {
                    controller.setPassword(text);
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () async {
                    controller.startLoading();
                    //追加処理
                    try{
                      await controller.signUp();
                      Navigator.of(context).pop();
                    } catch(e){
                      final snackBar = SnackBar(
                        backgroundColor: Colors.red,
                        content: Text(e.toString()),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } finally {
                      controller.endLoading();
                    }
                  },
                  child: Text("新規登録する"),
                ),
              ]),
            ),
            if (model.isLoading)
              Container(
                color: Colors. black54,
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
