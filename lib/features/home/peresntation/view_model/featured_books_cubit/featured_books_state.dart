part of 'featured_books_cubit.dart';


abstract class  FeaturedBooksState {

}
class InitialState extends FeaturedBooksState {}
class FeaturedBooksLoadingState extends FeaturedBooksState {}
class FeaturedBooksSuccessState  extends FeaturedBooksState {
  final List<BookModel> books ; 
  FeaturedBooksSuccessState(this.books) ; 

}
class FeaturedBooksErrorState  extends FeaturedBooksState {
  final String message ; 
  FeaturedBooksErrorState(this.message) ;
}
