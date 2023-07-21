
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_details_sector.dart';
import 'custom_book_details_app_bar.dart';
import 'similar_book_sector.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({ required this.bookModel  , super.key});
  final BookModel bookModel ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
        child: Column(
          children: [
            const SafeArea(child: CustomBookDetailsAppBar()),
            SizedBox(
              height: 15.h,
            ),
             BookDetatilsSector(bookModel : bookModel),
            const SimilarBookSector()
          ],
        ),
      ),
    ));
  }
}
