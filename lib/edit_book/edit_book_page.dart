import 'package:book_list_sample2/domain/book.dart';
import 'package:book_list_sample2/edit_book/edit_book_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class EditBookPage extends StatelessWidget {

  const EditBookPage._({Key? key}) : super(key: key);

  static Widget wrapped({required Book book}) {
    return StateNotifierProvider<EditBookModel, EditBook>(
      create: (_) => EditBookModel(book.id!),
      child: const EditBookPage._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<EditBookModel>(context,listen: false);
    final model = Provider.of<EditBook>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("本の編集"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: controller.titleController,
                decoration: InputDecoration(
                  hintText: '本のタイトル',
                ),
                onChanged: (text) {
                  controller.setTitle(text);
                },
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                controller: controller.authorController,
                decoration: InputDecoration(
                  hintText: '本の著者',
                ),
                onChanged: (text) {
                  controller.setAuthor(text);
                },
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: controller.isUpdated()
                    ? () async {
                        //追加処理
                        try {
                          await controller.update();
                          Navigator.of(context).pop(model.title);
                        } catch (e) {
                          final snackBar = SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(e.toString()),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      }
                    : null,
                child: Text("更新する"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
