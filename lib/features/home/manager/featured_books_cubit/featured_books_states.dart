import 'package:bookly/features/home/data/models/book_model/book_model.dart';

abstract class FeaturedBooksStates {
  const FeaturedBooksStates();
}

class FeaturedBooksIntial extends FeaturedBooksStates {}

class FeaturedBooksLoading extends FeaturedBooksStates {}

class FeaturedBooksFailure extends FeaturedBooksStates {
  final String errorMessage;

  const FeaturedBooksFailure(this.errorMessage);
}

class FeaturedBooksSuccess extends FeaturedBooksStates {
  final List<BookModel> books;

  const FeaturedBooksSuccess(this.books);
}
