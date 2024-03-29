import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/manager/featured_books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksIntial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var results = await homeRepo.fetchFeaturedBooks();
    results.fold((failure) => emit(FeaturedBooksFailure(failure.errorMessage)),
        (books) => emit(FeaturedBooksSuccess(books)));
  }
}
