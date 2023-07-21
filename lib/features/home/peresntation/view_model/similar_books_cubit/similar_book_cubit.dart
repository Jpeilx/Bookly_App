import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repository/base_home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/network/errors/network_exceptions.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBooksStates> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBooksInitialState());

  BaseHomeRepo homeRepo;
  Future<void> fetchSimilarBooks(String category) async {
    emit(FetchSimilarBooksLoadingState());
    var response = await homeRepo.fetchSimilarBooks(category: category);
    response.fold((failure) {
      emit(FetchSimilarBooksErrorState(
          NetworkExceptions.getErrorMessage(failure as NetworkExceptions)));
    }, (books) {
      emit(FetchSimilarBooksSucessState(books));
    });
  }
}
