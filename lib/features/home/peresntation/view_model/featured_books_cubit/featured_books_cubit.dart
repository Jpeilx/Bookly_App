
import 'package:bookly/core/network/errors/network_exceptions.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repository/base_home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRebo) : super(InitialState());
  final  BaseHomeRepo homeRebo ; 
  Future <void> fetchFeatureBooks() async{
    emit(FeaturedBooksLoadingState()) ;
   var response = await homeRebo.fetchFeatureBooks() ; 
  response.fold((failure)  {
    emit(FeaturedBooksErrorState(NetworkExceptions.getErrorMessage(failure as NetworkExceptions)));
  }, (books) {
    emit(FeaturedBooksSuccessState(books)) ; 
  });
  } 

}
