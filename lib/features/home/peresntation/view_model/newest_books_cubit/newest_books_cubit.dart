
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/network/errors/network_exceptions.dart';
import '../../../data/repository/base_home_repo.dart';


part 'newest_books_state.dart';


class NewestBooksCubit extends Cubit<NewestBooksStates> {
  NewestBooksCubit ( this.homeRebo) : super(NewestBooksInitialState()) ;
  final  BaseHomeRepo homeRebo ; 
  Future <void> fetchNewesBooks() async{
    emit(NewestBooksLoadingState()) ;
   var response = await homeRebo.fetchNewestBooks() ; 
  response.fold((failure)  {
    emit(NewestBooksErrorState(NetworkExceptions.getErrorMessage(failure as NetworkExceptions)));
  }, (books) {
    emit(NewestBooksSucessState(books)) ; 
  });
  } 
  
}
