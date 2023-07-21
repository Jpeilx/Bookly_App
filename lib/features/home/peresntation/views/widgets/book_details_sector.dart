import 'package:bookly/core/utils/functions/Url_lancher.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'book_rating.dart';
import 'custom_item_image.dart';

class BookDetatilsSector extends StatelessWidget {
  const BookDetatilsSector({ required this.bookModel , super.key});
 final BookModel bookModel ;
  @override 
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250.h,
          child:   CustomItemImage(image:bookModel.volumeInfo?.imageLinks?.thumbnail ??''),
        ),
        SizedBox(height: 15.h,),
        Text(
          bookModel.volumeInfo?.title ??'' ,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
            opacity: .7,
            child: Text(
              bookModel.volumeInfo?.authors?[0]??'',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
              ),
            )),
        const SizedBox(height: 14),
        const BookRating(
          count: 0,
          rate: '0',
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 36,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              click: (){
                  launchCustomUrl(context, bookModel.volumeInfo?.previewLink )  ;
              },
              text: "Free",
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            )),
            Expanded(
                child: CustomButton(
              click: (){
                launchCustomUrl(context, bookModel.volumeInfo?.previewLink )  ;

              },
              fontsize: 16,
              text: "Free preview",
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            )),
          ],
        ),
      ],
    );
  }
}
