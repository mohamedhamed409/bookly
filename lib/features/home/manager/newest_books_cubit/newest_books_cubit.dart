import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/manager/newest_books_cubit/newest_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksIntial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());

    var results = await homeRepo.fetchNewestBooks();
    results.fold((failure) => emit(NewestBooksFailure(failure.errorMessage)),
        (books) => emit(NewestBooksSuccess(books)));
  }
}
