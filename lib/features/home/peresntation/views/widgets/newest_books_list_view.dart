
import 'package:bookly/core/widgets/custom_error_message.dart';
import 'package:bookly/core/widgets/custom_loading_widget.dart';
import 'package:bookly/features/home/peresntation/view_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'newest_book_list_view_item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
      builder: (context, state) {
        if (state is NewestBooksSucessState){
          return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child:  NewestBookListViewItem(bookModel: state.books[index]),
          ),
          itemCount: state.books.length,
        );
        }
        else if (state is NewestBooksErrorState){
          return CustomErrorMessage(errorMessage: state.error);

        }
        else {
          return const  CustomLoadingWidget() ;
        }
      },
    );
  }
}
