import 'package:bookly/core/widgets/custom_error_message.dart';
import 'package:bookly/core/widgets/custom_loading_widget.dart';
import 'package:bookly/features/home/peresntation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import 'custom_item_image.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccessState){
          return SizedBox(
            height: 193.h,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child:  GestureDetector( onTap: (){
                        GoRouter.of(context).push(AppRouter.kBookDetailsView , extra: state.books[index]);
                      } ,  child: CustomItemImage(image: state.books[index].volumeInfo?.imageLinks?.thumbnail ??'')),
                    )));
        }
        else if (state is FeaturedBooksErrorState){
          return CustomErrorMessage(errorMessage: state.message ,) ;
        

        }
        else{
          return const CustomLoadingWidget() ;
        }
      },
    );
  }
}
