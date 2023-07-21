import 'package:bookly/features/home/peresntation/view_model/similar_books_cubit/similar_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_error_message.dart';
import '../../../../../core/widgets/custom_loading_widget.dart';
import 'custom_item_image.dart';

class SimilarBoolListView extends StatelessWidget {
  const SimilarBoolListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBooksStates>(
      builder: (context, state) {
      if (state is FetchSimilarBooksSucessState){
       return SizedBox(
            height: 112.h,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: CustomItemImage(
                        image: state.books[index].volumeInfo?.imageLinks?.thumbnail ?? '',
                      ),
                    )));
      }
      else if ( state is FetchSimilarBooksErrorState){
          return CustomErrorMessage(errorMessage: state.error) ;
        }
        else{
          return const  CustomLoadingWidget() ;
        }
      },
    );
  }
}
