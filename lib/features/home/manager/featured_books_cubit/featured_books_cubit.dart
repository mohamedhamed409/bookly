import 'package:bookly/features/home/data/models/book_model/book_model.dart';

abstract class FeaturedBooksStates {
  const FeaturedBooksStates();
}

class FeaturedBookIntial extends FeaturedBooksStates {}

class FeaturedBookLoading extends FeaturedBooksStates {}

class FeaturedBookError extends FeaturedBooksStates {
  final String errorMessage;

  const FeaturedBookError(this.errorMessage);
}

class FeaturedBookSuccess extends FeaturedBooksStates {
  final List<BookModel> books;

 const FeaturedBookSuccess(this.books);
}
