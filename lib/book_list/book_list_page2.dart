import 'package:book_list_sample2/add_book/add_book_page.dart';
import 'package:book_list_sample2/book_list/book_list_state.dart';
import 'package:book_list_sample2/domain/book.dart';
import 'package:book_list_sample2/domain/book_list.dart';
import 'package:book_list_sample2/edit_book/edit_book_page.dart';
import 'package:book_list_sample2/login/login_page.dart';
import 'package:book_list_sample2/mypage/my_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class BookListPage extends StatelessWidget {
  const BookListPage._({Key? key}) : super(key: key);

  static Widget wrapped() {
    return StateNotifierProvider<BookListController, BookList>(
      create: (_) => BookListController(),
      child: BookListPage._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<BookList>();
    final controller = context.read<BookListController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("本一覧"),
        actions: [
          IconButton(
            onPressed: () async {
              //画面遷移
              if (FirebaseAuth.instance.currentUser != null) {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyPage(),
                    fullscreenDialog: true,
                  ),
                );
              } else {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                    fullscreenDialog: true,
                  ),
                );
              }
            },
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: Center(
          child: ListView.builder(
        itemBuilder: (context, index) {
          final book = model.books![index];
          return Slidable(
            actionPane: SlidableDrawerActionPane(),
            child: ListTile(
              leading: book.imgUrl != null ? Image.network(book.imgUrl!) : null,
              title: Text(book.title ?? ''),
              subtitle: Text(book.author ?? ''),
            ),
            secondaryActions: <Widget>[
              IconSlideAction(
                caption: '編集',
                color: Colors.black45,
                icon: Icons.edit,
                onTap: () async {
                  //編集画面に遷移
                  //画面遷移
                  final String? title = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditBookPage.wrapped(book:book),
                    ),
                  );
                  if (title != null) {
                    final snackBar = SnackBar(
                      backgroundColor: Colors.green,
                      content: Text("$titleを編集しました"),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                  controller.fetchBookList();
                },
              ),
              IconSlideAction(
                caption: '削除',
                color: Colors.red,
                icon: Icons.delete,
                onTap: () async {
                  //削除しますか？と聞いてはいだったら削除
                  await showConfirmDialog(context, book, controller);
                },
              ),
            ],
          );
        },
        itemCount: model.books?.length ?? 0,
      )),
      floatingActionButton:
          Consumer<BookListController>(builder: (context, model, child) {
        return FloatingActionButton(
          onPressed: () async {
            //画面遷移
            final bool? added = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddBookPage(),
                fullscreenDialog: true,
              ),
            );
            if (added != null && added) {
              final snackBar = SnackBar(
                backgroundColor: Colors.green,
                content: Text("本を追加しました"),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
            model.fetchBookList();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        );
      }),
    );
  }

  Future showConfirmDialog(
    BuildContext context,
    Book book,
    BookListController controller,
  ) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          title: Text("削除の確認"),
          content: Text("『${book.title}』を削除しますか？"),
          actions: [
            TextButton(
              child: Text("いいえ"),
              onPressed: () => Navigator.pop(context),
            ),
            TextButton(
              child: Text("はい"),
              onPressed: () async {
                //modelで削除
                await controller.delete(book);
                Navigator.pop(context);
                final snackBar = SnackBar(
                  backgroundColor: Colors.red,
                  content: Text("${book.title}を削除しました"),
                );
                controller.fetchBookList();
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
          ],
        );
      },
    );
  }
}
