import 'package:bookly/core/network/remote/dio_helper/dio_helper.dart';
import 'package:bookly/core/network/remote/end_points.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/network/errors/failure.dart';
import 'package:bookly/features/home/data/repository/base_home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/network/errors/network_exceptions.dart';

class HomeRebo implements BaseHomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try{
     var response =  await DioHelper.getdata(endPoint: EndPoints.getbook , query: {
        'Filtering':'free-ebooks',
        'Sorting':'newest',
        'q':'subject:programming'

      }) ; 
      List <BookModel> books =[] ;
      for (var item in response.data['items'] ){
        books.add(BookModel.fromJson(item)) ;

      }
      return Right(books) ; 

    }catch(error){
         return Left(NetworkExceptions.getDioException(error)) ;
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async {
     try{
     var response =  await DioHelper.getdata(endPoint: EndPoints.getbook , query: {
        'Filtering':'free-ebooks',
        'q':'politics'

      }) ; 
      List <BookModel> books =[] ;
      for (var item in response.data['items'] ){
        books.add(BookModel.fromJson(item)) ;

      }
      return Right(books) ; 

    }catch(error){
         return Left(NetworkExceptions.getDioException(error)) ;
    }
  }
  
  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category}) async{
     try{
     var response =  await DioHelper.getdata(endPoint: EndPoints.getbook , query: {
        'Filtering':'free-ebooks',
        'Sorting':'relevance',
        'q':'subject:Computer'

      }) ; 
      List <BookModel> books =[] ;
      for (var item in response.data['items'] ){
        books.add(BookModel.fromJson(item)) ;

      }
      return Right(books) ; 

    }catch(error){
         return Left(NetworkExceptions.getDioException(error)) ;
    }
   
  }
  
}