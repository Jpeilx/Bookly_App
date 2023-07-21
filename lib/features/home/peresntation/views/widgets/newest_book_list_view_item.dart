import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/peresntation/views/widgets/custom_item_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constant/app_constance.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class NewestBookListViewItem extends StatelessWidget {
  const NewestBookListViewItem({ required this.bookModel ,  super.key});
  final BookModel bookModel ; 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView , extra: bookModel);
      },
      child: SizedBox(
        height: 105.h,
        child: Row(
          children: [
            CustomItemImage(image: bookModel.volumeInfo?.imageLinks?.thumbnail ??'') , 
            SizedBox(
              width: 30.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200.w,
                    child: Text(
                      bookModel.volumeInfo?.title.toString() ?? '',
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    bookModel.volumeInfo?.authors?[0].toString() ?? '',
                    style: Styles.textStyle14
                        .copyWith(color: AppConstance.kgreyColor),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'FREE',
                        style: Styles.textStyle20.copyWith(
                            fontFamily: '', fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRating(rate:  '0' , count: 0,),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
