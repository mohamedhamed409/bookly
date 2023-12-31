import 'package:bookly/features/home/data/models/book_model/book_model.dart';

abstract class NewestBooksStates {
  const NewestBooksStates();
}

class NewestBooksIntial extends NewestBooksStates {}

class NewestBooksLoading extends NewestBooksStates {}

class NewestBooksFailure extends NewestBooksStates {
  final String errorMessage;

  const NewestBooksFailure(this.errorMessage);
}

class NewestBooksSuccess extends NewestBooksStates {
  final List<BookModel> books;

 const NewestBooksSuccess(this.books);
}
