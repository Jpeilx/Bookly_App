part of 'newest_books_cubit.dart';


abstract class  NewestBooksStates {}
class NewestBooksInitialState extends NewestBooksStates {}
class NewestBooksLoadingState extends NewestBooksStates  {}
class NewestBooksSucessState extends NewestBooksStates  {
  final List<BookModel> books ; 
  NewestBooksSucessState(this.books);
}
class NewestBooksErrorState extends NewestBooksStates  {
  final String error ; 
  NewestBooksErrorState(this.error) ;
}