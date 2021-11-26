import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'add_book_state.dart';

class AddBookPage extends StatelessWidget {
  const AddBookPage({Key? key}) : super(key: key);

  static Widget wrapped() {
    return StateNotifierProvider<AddBookModel, AddBook>(
      create: (_) => AddBookModel(),
      child: const AddBookPage(),
    );
  }

  widget({required Consumer<AddBook> child}) {}

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<AddBookModel>(context, listen: false);
    final model = Provider.of<AddBook>(context);
      return Scaffold(
        appBar: AppBar(
          title: Text("本を追加"),
        ),
        body: Center(
          child: Column(
            children: [
              widget(
                child: Consumer<AddBook>(builder: (context, model, child) {
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            children: [
                              GestureDetector(
                                child: SizedBox(
                                  width: 100,
                                  height: 160,
                                  child: model.imageFile != null
                                      ? Image.file(model.imageFile!)
                                      : Container(
                                    color: Colors.grey,
                                  ),
                                ),
                                onTap: () async {
                                  await controller.pickImage();
                                },
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: '本のタイトル',
                                ),
                                onChanged: (text) {
                                  controller.title = text;
                                },
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: '本の著者',
                                ),
                                onChanged: (text) {
                                 controller.author = text;
                                },
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              ElevatedButton(onPressed: () async {
                                //追加処理
                                try {
                                  controller.startLoading();
                                  await controller.addBook();
                                  Navigator.of(context).pop(true);
                                } catch (e) {
                                  final snackBar = SnackBar(
                                    backgroundColor: Colors.red,
                                    content: Text(e.toString()),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      snackBar);
                                } finally {
                                  controller.endLoading();
                                }
                              },
                                child: Text("追加する"),
                              ),
                            ]),
                      ),
                      if (model.isLoading)
                        Container(
                          color: Colors.black54,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                    ],
                  );
                },),
              ),
            ],
          ),
        ),
      );
  }
}
