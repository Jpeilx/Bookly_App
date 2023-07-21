import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repository/home_repo.dart';
import 'package:bookly/features/home/peresntation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/similar_books_cubit/similar_book_cubit.dart';

class BookDetailsView extends StatelessWidget {
  final  BookModel bookModel ; 
  const  BookDetailsView({ required this.bookModel , super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => SimilarBookCubit(getIt.get<HomeRebo>())..fetchSimilarBooks(bookModel.volumeInfo!.categories![0]),
      child:  BookDetailsViewBody(bookModel: bookModel,),
    );
  }
}
