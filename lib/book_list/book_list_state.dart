import 'package:book_list_sample2/domain/book.dart';
import 'package:book_list_sample2/domain/book_list.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:state_notifier/state_notifier.dart';

class BookListController extends StateNotifier<BookList> {
  BookListController() : super(const BookList()){
    fetchBookList();
  }

  void fetchBookList() async {
    final QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('books').get();
    final List<Book> books = snapshot.docs.map((DocumentSnapshot document) {
      Map<String, dynamic> data = document.data() as Map<String, dynamic>;
      final String id = document.id;
      final String title = data['title'];
      final String author = data['author'];
      final String? imgURL = data['imgURL'];

      return Book(
        id: id,
        title: title,
        author: author,
        imgUrl: imgURL,
      );
    }).toList();

    state = state.copyWith(
      books: books
    );
  }

  Future delete(Book book) {
    return FirebaseFirestore.instance.collection('books').doc(book.id).delete();
  }
}
