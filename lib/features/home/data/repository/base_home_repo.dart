import 'package:bookly/core/network/errors/failure.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class BaseHomeRepo {
 Future<Either<Failure,List<BookModel>>> fetchNewestBooks();
 Future<Either<Failure,List<BookModel>>> fetchFeatureBooks();
 Future<Either<Failure,List<BookModel>>> fetchSimilarBooks({required String category});

}