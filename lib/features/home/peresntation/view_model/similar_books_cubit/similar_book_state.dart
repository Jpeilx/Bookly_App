part of 'similar_book_cubit.dart';

abstract class SimilarBooksStates{}
class SimilarBooksInitialState extends SimilarBooksStates{}
class FetchSimilarBooksLoadingState extends SimilarBooksStates{} 
class FetchSimilarBooksSucessState extends SimilarBooksStates{
  final List<BookModel> books; 
  FetchSimilarBooksSucessState(this.books);
} 
class FetchSimilarBooksErrorState extends SimilarBooksStates{
  final String error ; 
  FetchSimilarBooksErrorState(this.error) ;
} 